import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_restaurant_response_model.freezed.dart';
part 'delete_restaurant_response_model.g.dart';

@freezed
class DeleteRestaurantResponseModel with _$DeleteRestaurantResponseModel {
  const factory DeleteRestaurantResponseModel({
    required Data data,
    required Meta meta,
  }) = _DeleteRestaurantResponseModel;

  factory DeleteRestaurantResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteRestaurantResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required int id,
    required Attributes attributes,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Attributes with _$Attributes {
  const factory Attributes({
    required String name,
    required String description,
    required String latitude,
    required String longitude,
    required String address,
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime publishedAt,
    String? photo,
    String? userId,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta() = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
