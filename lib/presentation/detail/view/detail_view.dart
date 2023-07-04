// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:fic5_bloc_restaurant/data/data_sources/local_data_sources/auth_local_data_sources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fic5_bloc_restaurant/bloc/restaurant/get_restaurant_detail/get_restaurant_detail_bloc.dart';
import 'package:fic5_bloc_restaurant/presentation/detail/widget/dv_body.dart';

class DetailView extends StatefulWidget {
  static const routeName = '/detail';
  final int restaurantId;
  const DetailView({
    Key? key,
    required this.restaurantId,
  }) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  late Future<bool> _isUserLogin;

  @override
  void initState() {
    _fetchUserData();
    context.read<GetRestaurantDetailBloc>().add(
        GetRestaurantDetailEvent.getDetail(restaurantId: widget.restaurantId));
    super.initState();
  }

  Future<void> _fetchUserData() async {
    _isUserLogin = AuthLocalDataSources().isLogin();
    if (await _isUserLogin == true) {
      final localData = await AuthLocalDataSources().getUser();
      log("User Id: ${localData.user.id}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetRestaurantDetailBloc, GetRestaurantDetailState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (model) {
              return FutureBuilder<bool>(
                future: _isUserLogin,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    final isUserLogin = snapshot.data ?? false;
                    return DvBody(
                      isLogin: isUserLogin,
                      model: model,
                      restaurantId: widget.restaurantId,
                    );
                  }
                },
              );
            },
            orElse: () => const Center(
              child: Text("No Data"),
            ),
          );
        },
      ),
    );
  }
}
