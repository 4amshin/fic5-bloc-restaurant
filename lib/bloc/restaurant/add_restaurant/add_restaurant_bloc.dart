import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:fic5_bloc_restaurant/data/data_sources/remote_data_sources/restaurant_data_sources.dart';
import 'package:fic5_bloc_restaurant/data/model/request/restaurant_request/add_restaurant_request_model.dart';
import 'package:fic5_bloc_restaurant/data/model/response/restaurant_response/add_restaurant_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_restaurant_event.dart';
part 'add_restaurant_state.dart';
part 'add_restaurant_bloc.freezed.dart';

class AddRestaurantBloc extends Bloc<AddRestaurantEvent, AddRestaurantState> {
  final RestaurantDataSources dataSources;
  AddRestaurantBloc(this.dataSources) : super(const _Initial()) {
    on<_AddRestaurant>(_addRestaurant);
  }

  Future<void> _addRestaurant(
    _AddRestaurant event,
    Emitter<AddRestaurantState> emit,
  ) async {
    emit(const _Loading());
    final uploadResult = await dataSources.uploadImage(event.image);
    uploadResult.fold(
      (error) => emit(_Error(message: error)),
      (dataUpload) async {
        final image = dataUpload.formats.medium.url;
        log(image.toString());
        final updatedRestaurantModel = event.restaurantModel.copyWith(
          data: event.restaurantModel.data.copyWith(photo: image),
        );
        final result = await dataSources.addRestaurant(
            restaurantData: updatedRestaurantModel);
        result.fold(
          (error) => emit(_Error(message: error)),
          (data) => emit(_Loaded(model: data)),
        );
      },
    );
  }
}
