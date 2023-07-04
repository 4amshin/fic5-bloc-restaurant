import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_response_model.freezed.dart';
part 'profile_response_model.g.dart';

@freezed
class ProfileResponseModel with _$ProfileResponseModel {
  const factory ProfileResponseModel({
    required int id,
    required String username,
    required String email,
    required String provider,
    required bool confirmed,
    required bool blocked,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ProfileResponseModel;

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseModelFromJson(json);
}
