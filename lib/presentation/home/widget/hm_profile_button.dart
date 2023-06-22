import 'dart:developer';

import 'package:fic5_bloc_restaurant/presentation/auth/profile/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HmProfileButton extends StatelessWidget {
  const HmProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: IconButton(
        onPressed: () {
          log("Open Profile Page");
          context.push(ProfileView.routeName);
        },
        icon: const Icon(Icons.person),
        iconSize: 20,
      ),
    );
  }
}
