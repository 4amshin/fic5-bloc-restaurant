// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  @override
  void initState() {
    context.read<GetRestaurantDetailBloc>().add(
        GetRestaurantDetailEvent.getDetail(restaurantId: widget.restaurantId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetRestaurantDetailBloc, GetRestaurantDetailState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (model) {
              return DvBody(
                model: model,
                restaurantId: widget.restaurantId,
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
