import 'package:fic5_bloc_restaurant/presentation/auth/login/view/login_view.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/TextLink/text_link.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RgTextLink extends StatelessWidget {
  const RgTextLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextLink(
      onTap: () => context.go(LoginView.routeName),
      label: "Sudah Punya Akun? ",
      linkText: "Login",
    );
  }
}
