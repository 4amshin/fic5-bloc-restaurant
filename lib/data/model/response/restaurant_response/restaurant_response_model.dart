import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_response_model.freezed.dart';
part 'restaurant_response_model.g.dart';

@freezed
class RestaurantResponseModel with _$RestaurantResponseModel {
  const factory RestaurantResponseModel({
    required List<Restaurant> restaurant,
    required Meta meta,
  }) = _RestaurantResponseModel;

  factory RestaurantResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantResponseModelFromJson(json);
}

@freezed
class Restaurant with _$Restaurant {
  const factory Restaurant({
    required int id,
    required Attributes attributes,
  }) = _Restaurant;

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
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
  const factory Meta({
    required Pagination pagination,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    required int page,
    required int pageSize,
    required int pageCount,
    required int total,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
