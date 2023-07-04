import 'package:fic5_bloc_restaurant/presentation/auth/register/widget/rg_input_area.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/InputField/password_field/cubit/password_visibility_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends StatefulWidget {
  static const routeName = '/register';
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController? nameController;
  TextEditingController? userNameController;
  TextEditingController? emailController;
  TextEditingController? passwordController;

  @override
  void initState() {
    nameController = TextEditingController();
    userNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    context.read<PasswordVisibilityCubit>().resetPasswordVisibility();
    super.initState();
  }

  @override
  void dispose() {
    nameController!.dispose();
    userNameController!.dispose();
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
            RgInputArea(
              nameController: nameController,
              userNameController: userNameController,
              emailController: emailController,
              passwordController: passwordController,
            ),
          ],
        ),
      ),
    );
  }
}
