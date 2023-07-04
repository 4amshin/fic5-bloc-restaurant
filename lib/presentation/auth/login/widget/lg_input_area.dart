import 'package:fic5_bloc_restaurant/bloc/auth/login/login_bloc.dart';
import 'package:fic5_bloc_restaurant/data/data_sources/local_data_sources/auth_local_data_sources.dart';
import 'package:fic5_bloc_restaurant/data/model/request/auth_request/login_request_model.dart';
import 'package:fic5_bloc_restaurant/presentation/auth/register/view/register_view.dart';
import 'package:fic5_bloc_restaurant/presentation/main_navigation/view/main_navigation_view.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/Buttons/main_button.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/InputField/password_field/password_input.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/InputField/text_input/text_input.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/TextLink/text_link.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LgInputArea extends StatelessWidget {
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  const LgInputArea({
    Key? key,
    this.emailController,
    this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginBloc>();

    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Login',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 16.0),
          TextInput(
            controller: emailController,
            label: 'Email',
            hintText: 'Enter your email',
          ),
          const SizedBox(height: 16.0),
          PasswordInput(
            controller: passwordController,
            label: 'Password',
            hintText: 'Enter your password',
          ),
          const SizedBox(height: 25),
          BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.maybeWhen(
                loaded: (model) {
                  //saved user auth data into local
                  AuthLocalDataSources().saveAuthData(model);
                  //show success dialog
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Login Success",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      backgroundColor: Colors.greenAccent,
                    ),
                  );
                  //navigate to home page
                  context.go(MainNavigationView.routeName);
                },
                error: (message) {
                  //show error dialog
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        message,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      backgroundColor: Colors.redAccent,
                    ),
                  );
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const Center(child: CircularProgressIndicator()),
                orElse: () {
                  return MainButton(
                    label: "Login",
                    onTap: () {
                      final loginModel = LoginRequestModel(
                        identifier: emailController!.text,
                        password: passwordController!.text,
                      );
                      bloc.add(LoginEvent.doLogin(loginModel: loginModel));
                    },
                  );
                },
              );
            },
          ),
          const SizedBox(height: 10),
          TextLink(
            onTap: () => context.push(RegisterView.routeName),
            label: "Belum Punya Akun? ",
            linkText: "Register",
          ),
        ],
      ),
    );
  }
}
