// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_restaurant_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteRestaurantResponseModel _$DeleteRestaurantResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteRestaurantResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteRestaurantResponseModel {
  Data get data => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteRestaurantResponseModelCopyWith<DeleteRestaurantResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteRestaurantResponseModelCopyWith<$Res> {
  factory $DeleteRestaurantResponseModelCopyWith(
          DeleteRestaurantResponseModel value,
          $Res Function(DeleteRestaurantResponseModel) then) =
      _$DeleteRestaurantResponseModelCopyWithImpl<$Res,
          DeleteRestaurantResponseModel>;
  @useResult
  $Res call({Data data, Meta meta});

  $DataCopyWith<$Res> get data;
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$DeleteRestaurantResponseModelCopyWithImpl<$Res,
        $Val extends DeleteRestaurantResponseModel>
    implements $DeleteRestaurantResponseModelCopyWith<$Res> {
  _$DeleteRestaurantResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
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
abstract class _$$_DeleteRestaurantResponseModelCopyWith<$Res>
    implements $DeleteRestaurantResponseModelCopyWith<$Res> {
  factory _$$_DeleteRestaurantResponseModelCopyWith(
          _$_DeleteRestaurantResponseModel value,
          $Res Function(_$_DeleteRestaurantResponseModel) then) =
      __$$_DeleteRestaurantResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data, Meta meta});

  @override
  $DataCopyWith<$Res> get data;
  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_DeleteRestaurantResponseModelCopyWithImpl<$Res>
    extends _$DeleteRestaurantResponseModelCopyWithImpl<$Res,
        _$_DeleteRestaurantResponseModel>
    implements _$$_DeleteRestaurantResponseModelCopyWith<$Res> {
  __$$_DeleteRestaurantResponseModelCopyWithImpl(
      _$_DeleteRestaurantResponseModel _value,
      $Res Function(_$_DeleteRestaurantResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_$_DeleteRestaurantResponseModel(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteRestaurantResponseModel
    implements _DeleteRestaurantResponseModel {
  const _$_DeleteRestaurantResponseModel(
      {required this.data, required this.meta});

  factory _$_DeleteRestaurantResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_DeleteRestaurantResponseModelFromJson(json);

  @override
  final Data data;
  @override
  final Meta meta;

  @override
  String toString() {
    return 'DeleteRestaurantResponseModel(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteRestaurantResponseModel &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteRestaurantResponseModelCopyWith<_$_DeleteRestaurantResponseModel>
      get copyWith => __$$_DeleteRestaurantResponseModelCopyWithImpl<
          _$_DeleteRestaurantResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteRestaurantResponseModelToJson(
      this,
    );
  }
}

abstract class _DeleteRestaurantResponseModel
    implements DeleteRestaurantResponseModel {
  const factory _DeleteRestaurantResponseModel(
      {required final Data data,
      required final Meta meta}) = _$_DeleteRestaurantResponseModel;

  factory _DeleteRestaurantResponseModel.fromJson(Map<String, dynamic> json) =
      _$_DeleteRestaurantResponseModel.fromJson;

  @override
  Data get data;
  @override
  Meta get meta;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteRestaurantResponseModelCopyWith<_$_DeleteRestaurantResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int get id => throw _privateConstructorUsedError;
  Attributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({int id, Attributes attributes});

  $AttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

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
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Attributes attributes});

  @override
  $AttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$_Data(
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
class _$_Data implements _Data {
  const _$_Data({required this.id, required this.attributes});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int id;
  @override
  final Attributes attributes;

  @override
  String toString() {
    return 'Data(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
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
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final int id, required final Attributes attributes}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int get id;
  @override
  Attributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
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
  String? get userId => throw _privateConstructorUsedError;

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
      String? userId});
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
    Object? userId = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      String? userId});
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
    Object? userId = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.userId});

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
  final String? userId;

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
      final String? userId}) = _$_Attributes;

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
  String? get userId;
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
