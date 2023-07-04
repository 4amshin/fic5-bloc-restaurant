import 'dart:developer';

import 'package:fic5_bloc_restaurant/data/data_sources/local_data_sources/auth_local_data_sources.dart';
import 'package:fic5_bloc_restaurant/data/model/response/auth_response/auth_response_model.dart';
import 'package:fic5_bloc_restaurant/presentation/auth/login/view/login_view.dart';
import 'package:fic5_bloc_restaurant/presentation/auth/profile/widget/pr_logout_button.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/TextLink/text_link.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileView extends StatefulWidget {
  static const routeName = '/profile';
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  AuthResponseModel? data;
  late Future<bool> _isUserLogin;

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    _isUserLogin = AuthLocalDataSources().isLogin();
    if (await _isUserLogin == true) {
      final localData = await AuthLocalDataSources().getUser();
      log("User Id: ${localData.user.id}");
      setState(() {
        data = localData;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _isUserLogin,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError || snapshot.data == false) {
          return Center(
            child: TextLink(
              onTap: () => context.push(LoginView.routeName),
              label: "Kamu belum masuk, ",
              linkText: "Login Disini!",
            ),
          );
        } else {
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
                      backgroundImage:
                          NetworkImage("https://tinyurl.com/icon-user"),
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
      },
    );
  }
}
