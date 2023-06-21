import 'package:fic5_bloc_restaurant/data/data_sources/remote_data_sources/auth_data_sources.dart';
import 'package:fic5_bloc_restaurant/data/model/request/auth_request/login_request_model.dart';
import 'package:fic5_bloc_restaurant/data/model/response/auth_response/auth_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthDataSource dataSource;
  LoginBloc(this.dataSource) : super(const _Initial()) {
    on<_DoLogin>(_doLogin);
  }

  Future<void> _doLogin(
    _DoLogin event,
    Emitter<LoginState> emit,
  ) async {
    emit(const _Loading());
    final result = await dataSource.login(loginData: event.loginModel);
    result.fold(
      (error) => emit(_Error(message: error)),
      (data) => emit(_Loaded(model: data)),
    );
  }
}
