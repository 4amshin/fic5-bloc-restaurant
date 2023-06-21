part of 'add_restaurant_bloc.dart';

@freezed
class AddRestaurantState with _$AddRestaurantState {
  const factory AddRestaurantState.initial() = _Initial;
  const factory AddRestaurantState.loading() = _Loading;
  const factory AddRestaurantState.loaded({
    required AddRestaurantResponseModel model,
  }) = _Loaded;
  const factory AddRestaurantState.error({
    required String message,
  }) = _Error;
}
