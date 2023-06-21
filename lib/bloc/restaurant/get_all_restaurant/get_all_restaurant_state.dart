part of 'get_all_restaurant_bloc.dart';

@freezed
class GetAllRestaurantState with _$GetAllRestaurantState {
  const factory GetAllRestaurantState.initial() = _Initial;
  const factory GetAllRestaurantState.loading() = _Loading;
  const factory GetAllRestaurantState.loaded({
    required RestaurantResponseModel model,
  }) = _Loaded;
  const factory GetAllRestaurantState.error({
    required String message,
  }) = _Error;
}
