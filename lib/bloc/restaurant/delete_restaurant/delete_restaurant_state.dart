part of 'delete_restaurant_bloc.dart';

@freezed
class DeleteRestaurantState with _$DeleteRestaurantState {
  const factory DeleteRestaurantState.initial() = _Initial;
  const factory DeleteRestaurantState.loading() = _Loading;
  const factory DeleteRestaurantState.loaded({
    required DeleteRestaurantResponseModel deleteModel,
  }) = _Loaded;
  const factory DeleteRestaurantState.error({
    required String message,
  }) = _Error;
}
