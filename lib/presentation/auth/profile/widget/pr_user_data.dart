// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fic5_bloc_restaurant/data/model/response/auth_response/profile_response_model.dart';
import 'package:fic5_bloc_restaurant/presentation/auth/profile/widget/pr_logout_button.dart';

class PrUserData extends StatelessWidget {
  final ProfileResponseModel profileModel;
  const PrUserData({
    Key? key,
    required this.profileModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile View"),
        actions: const [PrLogoutButton()],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Center(
            child: CircleAvatar(
              radius: 71,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage("https://tinyurl.com/icon-user"),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            profileModel.username,
            style: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            profileModel.email,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
