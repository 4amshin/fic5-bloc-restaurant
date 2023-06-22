import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_detail_response_model.freezed.dart';
part 'restaurant_detail_response_model.g.dart';

@freezed
class RestaurantDetailResponseModel with _$RestaurantDetailResponseModel {
  const factory RestaurantDetailResponseModel({
    required Data data,
    required Meta meta,
  }) = _RestaurantDetailResponseModel;

  factory RestaurantDetailResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDetailResponseModelFromJson(json);
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
    required String photo,
    required String userId,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta() = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
