import 'dart:developer';

import 'package:fic5_bloc_restaurant/data/data_sources/local_data_sources/auth_local_data_sources.dart';
import 'package:fic5_bloc_restaurant/data/model/response/auth_response/auth_response_model.dart';
import 'package:fic5_bloc_restaurant/presentation/auth/profile/widget/pr_logout_button.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  static const routeName = '/profile';
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  AuthResponseModel? data;

  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  Future<void> fetchUser() async {
    final localData = await AuthLocalDataSources().getUser();
    log("User Id: ${localData.user.id}");
    setState(() {
      data = localData;
    });
  }

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
            data?.user.username ?? 'user_name',
            style: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            data?.user.email ?? 'email',
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
