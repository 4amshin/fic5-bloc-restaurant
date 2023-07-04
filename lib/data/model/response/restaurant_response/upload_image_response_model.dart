import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_image_response_model.freezed.dart';
part 'upload_image_response_model.g.dart';

@freezed
class UploadImageResponseModel with _$UploadImageResponseModel {
  const factory UploadImageResponseModel({
    required int id,
    required String name,
    required dynamic alternativeText,
    required dynamic caption,
    required int width,
    required int height,
    required Formats formats,
    required String hash,
    required String ext,
    required String mime,
    required double size,
    required String url,
    required dynamic previewUrl,
    required String provider,
    required dynamic providerMetadata,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UploadImageResponseModel;

  factory UploadImageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UploadImageResponseModelFromJson(json);
}

@freezed
class Formats with _$Formats {
  const factory Formats({
    required Large thumbnail,
    required Large small,
    required Large medium,
    required Large large,
  }) = _Formats;

  factory Formats.fromJson(Map<String, dynamic> json) =>
      _$FormatsFromJson(json);
}

@freezed
class Large with _$Large {
  const factory Large({
    required String name,
    required String hash,
    required String ext,
    required String mime,
    required dynamic path,
    required int width,
    required int height,
    required double size,
    required String url,
  }) = _Large;

  factory Large.fromJson(Map<String, dynamic> json) => _$LargeFromJson(json);
}
