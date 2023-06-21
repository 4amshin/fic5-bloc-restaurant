import 'package:fic5_bloc_restaurant/data/data_sources/remote_data_sources/restaurant_data_sources.dart';
import 'package:fic5_bloc_restaurant/data/model/response/restaurant_response/restaurant_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_restaurant_event.dart';
part 'get_all_restaurant_state.dart';
part 'get_all_restaurant_bloc.freezed.dart';

class GetAllRestaurantBloc
    extends Bloc<GetAllRestaurantEvent, GetAllRestaurantState> {
  final RestaurantDataSources dataSources;
  GetAllRestaurantBloc(this.dataSources) : super(const _Initial()) {
    on<_GetAllRestaurant>(_getAllRestaurant);
  }

  Future<void> _getAllRestaurant(
    _GetAllRestaurant event,
    Emitter<GetAllRestaurantState> emit,
  ) async {
    emit(const _Loading());
    final result = await dataSources.getAllRestaurantData();
    result.fold(
      (error) => emit(_Error(message: error)),
      (data) => emit(_Loaded(model: data)),
    );
  }
}
