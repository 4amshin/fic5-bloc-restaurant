part of 'get_restaurant_detail_bloc.dart';

@freezed
class GetRestaurantDetailEvent with _$GetRestaurantDetailEvent {
  const factory GetRestaurantDetailEvent.started() = _Started;
  const factory GetRestaurantDetailEvent.getDetail({
    required int restaurantId,
  }) = _GetDetail;
}
