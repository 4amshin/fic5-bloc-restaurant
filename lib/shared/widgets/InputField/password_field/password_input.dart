import 'package:fic5_bloc_restaurant/shared/widgets/InputField/password_field/cubit/password_visibility_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInput extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController? controller;
  const PasswordInput({
    Key? key,
    required this.label,
    required this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PasswordVisibilityCubit>();
    return BlocBuilder<PasswordVisibilityCubit, bool>(
      builder: (context, visible) {
        return TextField(
          controller: controller,
          obscureText: visible,
          decoration: InputDecoration(
            labelText: label,
            hintText: hintText,
            suffixIcon: IconButton(
              onPressed: () {
                cubit.togglePasswordVisibility();
              },
              icon: Icon(
                visible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                size: 20,
              ),
            ),
          ),
        );
      },
    );
  }
}
