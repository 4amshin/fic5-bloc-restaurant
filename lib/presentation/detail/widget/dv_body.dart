// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fic5_bloc_restaurant/bloc/restaurant/get_all_restaurant/get_all_restaurant_bloc.dart';
import 'package:fic5_bloc_restaurant/presentation/main_navigation/view/main_navigation_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:fic5_bloc_restaurant/bloc/restaurant/delete_restaurant/delete_restaurant_bloc.dart';
import 'package:fic5_bloc_restaurant/data/model/response/restaurant_response/restaurant_detail_response_model.dart';
import 'package:fic5_bloc_restaurant/presentation/detail/widget/dv_button.dart';
import 'package:fic5_bloc_restaurant/presentation/detail/widget/dv_map_view.dart';

class DvBody extends StatelessWidget {
  final RestaurantDetailResponseModel model;
  final int restaurantId;
  final bool isLogin;
  const DvBody({
    Key? key,
    required this.model,
    required this.restaurantId,
    this.isLogin = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = model.data.attributes;
    final deleteBloc = context.read<DeleteRestaurantBloc>();
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height / 1.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    data.photo ?? 'https://tinyurl.com/logo-default1'),
                fit: BoxFit.cover,
              ),
              color: Colors.orange,
            ),
          ),
        ),
        Positioned(
          top: 40,
          left: 15,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Positioned(
          top: 380,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height / 2,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 4,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              height: 1,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            data.description,
                            style: const TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    isLogin
                        ? Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              DvButton(
                                onTap: () {},
                                icon: Icons.edit,
                                iconColor: Colors.blue,
                              ),
                              BlocConsumer<DeleteRestaurantBloc,
                                  DeleteRestaurantState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    loading: () => const Center(
                                        child: CircularProgressIndicator()),
                                    orElse: () {
                                      return DvButton(
                                        onTap: () => deleteBloc.add(
                                            DeleteRestaurantEvent
                                                .deleteRestaurant(
                                                    restaurantId:
                                                        restaurantId)),
                                        icon: Icons.delete,
                                        iconColor: Colors.red,
                                      );
                                    },
                                  );
                                },
                                listener: (context, state) {
                                  state.maybeWhen(
                                    loaded: (deleteModel) {
                                      //show success dialog
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                            "Delete Success",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          backgroundColor: Colors.greenAccent,
                                        ),
                                      );
                                      //navigate to home page
                                      context.go(MainNavigationView.routeName);
                                      context.read<GetAllRestaurantBloc>().add(
                                          const GetAllRestaurantEvent
                                              .getAllRestaurant());
                                    },
                                    error: (message) {
                                      //show error dialog
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            message,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          backgroundColor: Colors.redAccent,
                                        ),
                                      );
                                    },
                                    orElse: () {},
                                  );
                                },
                              ),
                            ],
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                DvMapView(
                  cafeName: data.name,
                  latitude: data.latitude,
                  longitude: data.longitude,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
