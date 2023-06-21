import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_restaurant_request_model.freezed.dart';
part 'add_restaurant_request_model.g.dart';

@freezed
class AddRestaurantRequestModel with _$AddRestaurantRequestModel {
  const factory AddRestaurantRequestModel({
    required Data data,
  }) = _AddRestaurantRequestModel;

  factory AddRestaurantRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddRestaurantRequestModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String name,
    required String description,
    required String latitude,
    required String longitude,
    required String photo,
    required String address,
    required int userId,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
