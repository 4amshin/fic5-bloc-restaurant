import 'package:fic5_bloc_restaurant/data/data_sources/remote_data_sources/restaurant_data_sources.dart';
import 'package:fic5_bloc_restaurant/data/model/response/restaurant_response/restaurant_detail_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_restaurant_detail_event.dart';
part 'get_restaurant_detail_state.dart';
part 'get_restaurant_detail_bloc.freezed.dart';

class GetRestaurantDetailBloc
    extends Bloc<GetRestaurantDetailEvent, GetRestaurantDetailState> {
  final RestaurantDataSources dataSources;
  GetRestaurantDetailBloc(this.dataSources) : super(const _Initial()) {
    on<_GetDetail>(_getDetail);
  }

  Future<void> _getDetail(
    _GetDetail event,
    Emitter<GetRestaurantDetailState> emit,
  ) async {
    emit(const _Loading());
    final result =
        await dataSources.getRestaurantDetail(restaurantId: event.restaurantId);
    result.fold(
      (error) => emit(_Error(message: error)),
      (data) => emit(_Loaded(restaurantDetail: data)),
    );
  }
}
