// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:fic5_bloc_restaurant/data/model/response/restaurant_response/restaurant_response_model.dart';
import 'package:fic5_bloc_restaurant/presentation/home/widget/hm_grid_item.dart';

class HmGridView extends StatelessWidget {
  final RestaurantResponseModel model;
  const HmGridView({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("Data Length: ${model.data.length}");
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: model.data.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisExtent: 170,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        final data = model.data[index].attributes;
        return HmGridItem(
          imgUrl: data.photo,
          name: data.name,
          address: data.address,
        );
      },
    );
  }
}
