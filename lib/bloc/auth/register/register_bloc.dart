import 'package:fic5_bloc_restaurant/data/data_sources/remote_data_sources/auth_data_sources.dart';
import 'package:fic5_bloc_restaurant/data/model/request/auth_request/register_request_model.dart';
import 'package:fic5_bloc_restaurant/data/model/response/auth_response/auth_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthDataSource dataSource;
  RegisterBloc(this.dataSource) : super(const _Initial()) {
    on<_AddUser>(_addUser);
  }

  Future<void> _addUser(
    _AddUser event,
    Emitter<RegisterState> emit,
  ) async {
    emit(const _Loading());
    final result = await dataSource.register(registerData: event.registerModel);
    result.fold(
      (error) => emit(_Error(message: error)),
      (data) => emit(_Loaded(model: data)),
    );
  }
}
