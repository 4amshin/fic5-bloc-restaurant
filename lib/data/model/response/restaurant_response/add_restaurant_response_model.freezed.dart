// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_restaurant_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddRestaurantResponseModel _$AddRestaurantResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AddRestaurantResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AddRestaurantResponseModel {
  Restaurant get restaurant => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddRestaurantResponseModelCopyWith<AddRestaurantResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddRestaurantResponseModelCopyWith<$Res> {
  factory $AddRestaurantResponseModelCopyWith(AddRestaurantResponseModel value,
          $Res Function(AddRestaurantResponseModel) then) =
      _$AddRestaurantResponseModelCopyWithImpl<$Res,
          AddRestaurantResponseModel>;
  @useResult
  $Res call({Restaurant restaurant, Meta meta});

  $RestaurantCopyWith<$Res> get restaurant;
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$AddRestaurantResponseModelCopyWithImpl<$Res,
        $Val extends AddRestaurantResponseModel>
    implements $AddRestaurantResponseModelCopyWith<$Res> {
  _$AddRestaurantResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurant = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantCopyWith<$Res> get restaurant {
    return $RestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddRestaurantResponseModelCopyWith<$Res>
    implements $AddRestaurantResponseModelCopyWith<$Res> {
  factory _$$_AddRestaurantResponseModelCopyWith(
          _$_AddRestaurantResponseModel value,
          $Res Function(_$_AddRestaurantResponseModel) then) =
      __$$_AddRestaurantResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Restaurant restaurant, Meta meta});

  @override
  $RestaurantCopyWith<$Res> get restaurant;
  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_AddRestaurantResponseModelCopyWithImpl<$Res>
    extends _$AddRestaurantResponseModelCopyWithImpl<$Res,
        _$_AddRestaurantResponseModel>
    implements _$$_AddRestaurantResponseModelCopyWith<$Res> {
  __$$_AddRestaurantResponseModelCopyWithImpl(
      _$_AddRestaurantResponseModel _value,
      $Res Function(_$_AddRestaurantResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurant = null,
    Object? meta = null,
  }) {
    return _then(_$_AddRestaurantResponseModel(
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddRestaurantResponseModel implements _AddRestaurantResponseModel {
  const _$_AddRestaurantResponseModel(
      {required this.restaurant, required this.meta});

  factory _$_AddRestaurantResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddRestaurantResponseModelFromJson(json);

  @override
  final Restaurant restaurant;
  @override
  final Meta meta;

  @override
  String toString() {
    return 'AddRestaurantResponseModel(restaurant: $restaurant, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddRestaurantResponseModel &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, restaurant, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddRestaurantResponseModelCopyWith<_$_AddRestaurantResponseModel>
      get copyWith => __$$_AddRestaurantResponseModelCopyWithImpl<
          _$_AddRestaurantResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddRestaurantResponseModelToJson(
      this,
    );
  }
}

abstract class _AddRestaurantResponseModel
    implements AddRestaurantResponseModel {
  const factory _AddRestaurantResponseModel(
      {required final Restaurant restaurant,
      required final Meta meta}) = _$_AddRestaurantResponseModel;

  factory _AddRestaurantResponseModel.fromJson(Map<String, dynamic> json) =
      _$_AddRestaurantResponseModel.fromJson;

  @override
  Restaurant get restaurant;
  @override
  Meta get meta;
  @override
  @JsonKey(ignore: true)
  _$$_AddRestaurantResponseModelCopyWith<_$_AddRestaurantResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return _Restaurant.fromJson(json);
}

/// @nodoc
mixin _$Restaurant {
  int get id => throw _privateConstructorUsedError;
  Attributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res, Restaurant>;
  @useResult
  $Res call({int id, Attributes attributes});

  $AttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res, $Val extends Restaurant>
    implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributesCopyWith<$Res> get attributes {
    return $AttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RestaurantCopyWith<$Res>
    implements $RestaurantCopyWith<$Res> {
  factory _$$_RestaurantCopyWith(
          _$_Restaurant value, $Res Function(_$_Restaurant) then) =
      __$$_RestaurantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Attributes attributes});

  @override
  $AttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_RestaurantCopyWithImpl<$Res>
    extends _$RestaurantCopyWithImpl<$Res, _$_Restaurant>
    implements _$$_RestaurantCopyWith<$Res> {
  __$$_RestaurantCopyWithImpl(
      _$_Restaurant _value, $Res Function(_$_Restaurant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$_Restaurant(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Restaurant implements _Restaurant {
  const _$_Restaurant({required this.id, required this.attributes});

  factory _$_Restaurant.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantFromJson(json);

  @override
  final int id;
  @override
  final Attributes attributes;

  @override
  String toString() {
    return 'Restaurant(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Restaurant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantCopyWith<_$_Restaurant> get copyWith =>
      __$$_RestaurantCopyWithImpl<_$_Restaurant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantToJson(
      this,
    );
  }
}

abstract class _Restaurant implements Restaurant {
  const factory _Restaurant(
      {required final int id,
      required final Attributes attributes}) = _$_Restaurant;

  factory _Restaurant.fromJson(Map<String, dynamic> json) =
      _$_Restaurant.fromJson;

  @override
  int get id;
  @override
  Attributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantCopyWith<_$_Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
mixin _$Attributes {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesCopyWith<Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesCopyWith<$Res> {
  factory $AttributesCopyWith(
          Attributes value, $Res Function(Attributes) then) =
      _$AttributesCopyWithImpl<$Res, Attributes>;
  @useResult
  $Res call(
      {String name,
      String description,
      String latitude,
      String longitude,
      String address,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime publishedAt,
      String? photo,
      String userId});
}

/// @nodoc
class _$AttributesCopyWithImpl<$Res, $Val extends Attributes>
    implements $AttributesCopyWith<$Res> {
  _$AttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? publishedAt = null,
    Object? photo = freezed,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttributesCopyWith<$Res>
    implements $AttributesCopyWith<$Res> {
  factory _$$_AttributesCopyWith(
          _$_Attributes value, $Res Function(_$_Attributes) then) =
      __$$_AttributesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String latitude,
      String longitude,
      String address,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime publishedAt,
      String? photo,
      String userId});
}

/// @nodoc
class __$$_AttributesCopyWithImpl<$Res>
    extends _$AttributesCopyWithImpl<$Res, _$_Attributes>
    implements _$$_AttributesCopyWith<$Res> {
  __$$_AttributesCopyWithImpl(
      _$_Attributes _value, $Res Function(_$_Attributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? publishedAt = null,
    Object? photo = freezed,
    Object? userId = null,
  }) {
    return _then(_$_Attributes(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attributes implements _Attributes {
  const _$_Attributes(
      {required this.name,
      required this.description,
      required this.latitude,
      required this.longitude,
      required this.address,
      required this.createdAt,
      required this.updatedAt,
      required this.publishedAt,
      this.photo,
      required this.userId});

  factory _$_Attributes.fromJson(Map<String, dynamic> json) =>
      _$$_AttributesFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String address;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime publishedAt;
  @override
  final String? photo;
  @override
  final String userId;

  @override
  String toString() {
    return 'Attributes(name: $name, description: $description, latitude: $latitude, longitude: $longitude, address: $address, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, photo: $photo, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Attributes &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, latitude,
      longitude, address, createdAt, updatedAt, publishedAt, photo, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttributesCopyWith<_$_Attributes> get copyWith =>
      __$$_AttributesCopyWithImpl<_$_Attributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributesToJson(
      this,
    );
  }
}

abstract class _Attributes implements Attributes {
  const factory _Attributes(
      {required final String name,
      required final String description,
      required final String latitude,
      required final String longitude,
      required final String address,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final DateTime publishedAt,
      final String? photo,
      required final String userId}) = _$_Attributes;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$_Attributes.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  String get address;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime get publishedAt;
  @override
  String? get photo;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_AttributesCopyWith<_$_Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MetaCopyWith<$Res> {
  factory _$$_MetaCopyWith(_$_Meta value, $Res Function(_$_Meta) then) =
      __$$_MetaCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MetaCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res, _$_Meta>
    implements _$$_MetaCopyWith<$Res> {
  __$$_MetaCopyWithImpl(_$_Meta _value, $Res Function(_$_Meta) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Meta implements _Meta {
  const _$_Meta();

  factory _$_Meta.fromJson(Map<String, dynamic> json) => _$$_MetaFromJson(json);

  @override
  String toString() {
    return 'Meta()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Meta);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta() = _$_Meta;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$_Meta.fromJson;
}
