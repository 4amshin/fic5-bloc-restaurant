// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fic5_bloc_restaurant/bloc/auth/login/login_bloc.dart';
import 'package:fic5_bloc_restaurant/bloc/auth/profile/profile_bloc.dart';
import 'package:fic5_bloc_restaurant/bloc/auth/register/register_bloc.dart';
import 'package:fic5_bloc_restaurant/bloc/restaurant/add_restaurant/add_restaurant_bloc.dart';
import 'package:fic5_bloc_restaurant/bloc/restaurant/delete_restaurant/delete_restaurant_bloc.dart';
import 'package:fic5_bloc_restaurant/bloc/restaurant/get_all_restaurant/get_all_restaurant_bloc.dart';
import 'package:fic5_bloc_restaurant/bloc/restaurant/get_restaurant_detail/get_restaurant_detail_bloc.dart';
import 'package:fic5_bloc_restaurant/data/data_sources/remote_data_sources/auth_data_sources.dart';
import 'package:fic5_bloc_restaurant/data/data_sources/remote_data_sources/restaurant_data_sources.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/InputField/password_field/cubit/password_visibility_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocProvider extends StatelessWidget {
  final Widget child;
  const SimpleBlocProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PasswordVisibilityCubit(),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(AuthDataSource()),
        ),
        BlocProvider(
          create: (context) => LoginBloc(AuthDataSource()),
        ),
        BlocProvider(
          create: (context) => GetAllRestaurantBloc(RestaurantDataSources()),
        ),
        BlocProvider(
          create: (context) => GetRestaurantDetailBloc(RestaurantDataSources()),
        ),
        BlocProvider(
          create: (context) => AddRestaurantBloc(RestaurantDataSources()),
        ),
        BlocProvider(
          create: (context) => DeleteRestaurantBloc(RestaurantDataSources()),
        ),
        BlocProvider(
          create: (context) => ProfileBloc(AuthDataSource()),
        ),
      ],
      child: child,
    );
  }
}
