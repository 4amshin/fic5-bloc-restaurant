import 'dart:developer';

import 'package:fic5_bloc_restaurant/bloc/auth/profile/profile_bloc.dart';
import 'package:fic5_bloc_restaurant/data/data_sources/local_data_sources/auth_local_data_sources.dart';
import 'package:fic5_bloc_restaurant/presentation/auth/login/view/login_view.dart';
import 'package:fic5_bloc_restaurant/presentation/auth/profile/widget/pr_logout_button.dart';
import 'package:fic5_bloc_restaurant/presentation/auth/profile/widget/pr_user_data.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/TextLink/text_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProfileView extends StatefulWidget {
  static const routeName = '/profile';
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
      context
          .read<ProfileBloc>()
          .add(ProfileEvent.getProfile(userId: localData.user.id));
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
          return BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (profileModel) =>
                    PrUserData(profileModel: profileModel),
                orElse: () => const Center(child: Text("No Data")),
              );
            },
          );
        }
      },
    );
  }
}
