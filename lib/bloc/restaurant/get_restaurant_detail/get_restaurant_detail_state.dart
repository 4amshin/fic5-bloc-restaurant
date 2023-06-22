part of 'get_restaurant_detail_bloc.dart';

@freezed
class GetRestaurantDetailState with _$GetRestaurantDetailState {
  const factory GetRestaurantDetailState.initial() = _Initial;
  const factory GetRestaurantDetailState.loading() = _Loading;
  const factory GetRestaurantDetailState.loaded({
    required RestaurantDetailResponseModel restaurantDetail,
  }) = _Loaded;
  const factory GetRestaurantDetailState.error({
    required String message,
  }) = _Error;
}
