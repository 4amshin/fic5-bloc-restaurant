import 'package:fic5_bloc_restaurant/data/data_sources/remote_data_sources/restaurant_data_sources.dart';
import 'package:fic5_bloc_restaurant/data/model/response/restaurant_response/delete_restaurant_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_restaurant_event.dart';
part 'delete_restaurant_state.dart';
part 'delete_restaurant_bloc.freezed.dart';

class DeleteRestaurantBloc
    extends Bloc<DeleteRestaurantEvent, DeleteRestaurantState> {
  final RestaurantDataSources dataSources;
  DeleteRestaurantBloc(this.dataSources) : super(const _Initial()) {
    on<_DeleteRestaurant>(_deleteRestaurant);
  }

  Future<void> _deleteRestaurant(
    _DeleteRestaurant event,
    Emitter<DeleteRestaurantState> emit,
  ) async {
    emit(const _Loading());
    final result =
        await dataSources.deleteRestaurant(restaurantId: event.restaurantId);
    result.fold(
      (error) => emit(_Error(message: error)),
      (data) => emit(_Loaded(deleteModel: data)),
    );
  }
}
