import 'dart:developer';

import 'package:fic5_bloc_restaurant/data/data_sources/local_data_sources/auth_local_data_sources.dart';
import 'package:fic5_bloc_restaurant/presentation/auth/login/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PrLogoutButton extends StatelessWidget {
  const PrLogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: IconButton(
        onPressed: () async {
          log("LogOut.....");
          //when logout remove the local login token
          await AuthLocalDataSources().removeToken();
          log("Removing Login Token in Local Storage");
          //navigate to login page
          log("Navigate To Login Page");
          context.go(LoginView.routeName);
        },
        icon: const Icon(Icons.logout),
        iconSize: 20,
      ),
    );
  }
}
