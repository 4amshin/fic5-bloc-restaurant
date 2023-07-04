import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordVisibilityCubit extends Cubit<bool> {
  PasswordVisibilityCubit() : super(true);

  void togglePasswordVisibility() {
    //when tap change state to the opposite of current state
    //its like setState(state = !state)
    emit(!state);
  }

  void resetPasswordVisibility() {
    emit(true);
  }
}
