import 'package:fic5_bloc_restaurant/bloc/restaurant/get_all_restaurant/get_all_restaurant_bloc.dart';
import 'package:fic5_bloc_restaurant/presentation/home/widget/hm_grid_view.dart';
import 'package:fic5_bloc_restaurant/presentation/home/widget/hm_logout_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  static const routeName = '/home';
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home View"),
        actions: const [HmLogoutButton()],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 15),
        child: BlocBuilder<GetAllRestaurantBloc, GetAllRestaurantState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              orElse: () {
                return const HmGridView(
                  imgUrl: "https://tinyurl.com/default-fic",
                  name: "Kedai Malika",
                  address: "Jl. Pong Tempon",
                );
              },
            );
          },
        ),
      ),
    );
  }
}
