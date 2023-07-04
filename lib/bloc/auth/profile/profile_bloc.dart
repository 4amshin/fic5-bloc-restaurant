import 'package:fic5_bloc_restaurant/data/data_sources/remote_data_sources/auth_data_sources.dart';
import 'package:fic5_bloc_restaurant/data/model/response/auth_response/profile_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AuthDataSource dataSource;
  ProfileBloc(this.dataSource) : super(const _Initial()) {
    on<_GetProfile>(_getProfile);
  }

  Future<void> _getProfile(
    _GetProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const _Loading());
    final result = await dataSource.getProfile(userId: event.userId);
    result.fold(
      (error) => emit(_Error(message: error)),
      (data) => emit(_Loaded(profileModel: data)),
    );
  }
}
