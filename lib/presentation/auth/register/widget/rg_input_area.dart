// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:fic5_bloc_restaurant/data/model/request/auth_request/register_request_model.dart';
import 'package:fic5_bloc_restaurant/presentation/auth/login/view/login_view.dart';
import 'package:fic5_bloc_restaurant/presentation/auth/register/widget/rg_text_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fic5_bloc_restaurant/bloc/auth/register/register_bloc.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/Buttons/main_button.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/InputField/password_field/password_input.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/InputField/text_input/text_input.dart';
import 'package:go_router/go_router.dart';

class RgInputArea extends StatelessWidget {
  final TextEditingController? nameController;
  final TextEditingController? userNameController;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  const RgInputArea({
    Key? key,
    this.nameController,
    this.userNameController,
    this.emailController,
    this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RegisterBloc>();
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Register',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 16.0),
          TextInput(
            controller: nameController,
            label: 'Name',
            hintText: 'Enter your name',
          ),
          TextInput(
            controller: userNameController,
            label: 'UserName',
            hintText: 'Enter your username',
          ),
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
          BlocConsumer<RegisterBloc, RegisterState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () {
                  log('Loading State');
                  return const Center(child: CircularProgressIndicator());
                },
                orElse: () {
                  return MainButton(
                    label: "Register",
                    onTap: () {
                      final registerModel = RegisterRequestModel(
                        name: nameController!.text,
                        password: passwordController!.text,
                        email: emailController!.text,
                        username: userNameController!.text,
                      );

                      bloc.add(
                          RegisterEvent.addUser(registerModel: registerModel));
                    },
                  );
                },
              );
            },
            listener: (context, state) {
              state.maybeWhen(
                loaded: (model) {
                  //show success dialog
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text("Register Success with id: ${model.user.id}"),
                      backgroundColor: Colors.indigoAccent,
                    ),
                  );
                  //navigate to login page
                  context.go(LoginView.routeName);
                },
                error: (message) {
                  //show failed dialog
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: Colors.redAccent,
                    ),
                  );
                },
                orElse: () {},
              );
            },
          ),
          const SizedBox(height: 10),
          const RgTextLink(),
        ],
      ),
    );
  }
}
