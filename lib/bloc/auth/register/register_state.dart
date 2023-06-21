part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = _Loading;
  const factory RegisterState.loaded({
    required AuthResponseModel model,
  }) = _Loaded;
  const factory RegisterState.error({
    required String message,
  }) = _Error;
}