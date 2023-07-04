import 'package:fic5_bloc_restaurant/presentation/auth/login/widget/lg_input_area.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/InputField/password_field/cubit/password_visibility_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  static const routeName = '/login';
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController? emailController;
  TextEditingController? passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    context.read<PasswordVisibilityCubit>().resetPasswordVisibility();
    super.initState();
  }

  @override
  void dispose() {
    emailController!.dispose();
    passwordController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            LgInputArea(
              emailController: emailController,
              passwordController: passwordController,
            ),
          ],
        ),
      ),
    );
  }
}
