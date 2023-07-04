part of 'delete_restaurant_bloc.dart';

@freezed
class DeleteRestaurantEvent with _$DeleteRestaurantEvent {
  const factory DeleteRestaurantEvent.started() = _Started;
  const factory DeleteRestaurantEvent.deleteRestaurant({
    required int restaurantId,
  }) = _DeleteRestaurant;
}
