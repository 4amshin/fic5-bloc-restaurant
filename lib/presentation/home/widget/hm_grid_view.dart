// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fic5_bloc_restaurant/presentation/home/widget/hm_grid_item.dart';

class HmGridView extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String address;
  const HmGridView({
    Key? key,
    required this.imgUrl,
    required this.name,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisExtent: 170,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        return const HmGridItem(
          imgUrl: "https://tinyurl.com/default-fic",
          name: "Alang Puyuh",
          address: "Jl. Pong Tempon",
        );
      },
    );
  }
}
