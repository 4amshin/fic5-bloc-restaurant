import 'package:fic5_bloc_restaurant/data/data_sources/local_data_sources/auth_local_data_sources.dart';
import 'package:fic5_bloc_restaurant/presentation/add_restaurant/view/add_restaurant_view.dart';
import 'package:fic5_bloc_restaurant/presentation/auth/login/view/login_view.dart';
import 'package:fic5_bloc_restaurant/presentation/auth/profile/view/profile_view.dart';
import 'package:fic5_bloc_restaurant/presentation/auth/register/view/register_view.dart';
import 'package:fic5_bloc_restaurant/presentation/detail/view/detail_view.dart';
import 'package:fic5_bloc_restaurant/presentation/home/view/home_view.dart';
import 'package:fic5_bloc_restaurant/presentation/main_navigation/view/main_navigation_view.dart';
import 'package:fic5_bloc_restaurant/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'presentation/detail/widget/dv_map_full_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleBlocProvider(
      child: MaterialApp.router(
        title: 'FIC5-Bloc-Restaurant',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          useMaterial3: true,
        ),
        routerConfig: GoRouter(
          initialLocation: MainNavigationView.routeName,
          // initialLocation: HomeView.routeName,
          routes: [
            GoRoute(
              path: LoginView.routeName,
              builder: (context, state) => const LoginView(),
            ),
            GoRoute(
              path: MainNavigationView.routeName,
              builder: (context, state) => const MainNavigationView(),
            ),
            GoRoute(
              path: RegisterView.routeName,
              builder: (context, state) => const RegisterView(),
            ),
            GoRoute(
              path: HomeView.routeName,
              builder: (context, state) => const HomeView(),
              redirect: (context, state) async {
                final isLogin = await AuthLocalDataSources().isLogin();
                if (isLogin) {
                  return null;
                } else {
                  return HomeView.routeName;
                }
              },
            ),
            GoRoute(
              path: ProfileView.routeName,
              builder: (context, state) => const ProfileView(),
            ),
            GoRoute(
              path: "${DetailView.routeName}/:restaurantId",
              builder: (context, state) {
                return DetailView(
                  restaurantId:
                      int.parse(state.pathParameters["restaurantId"] ?? ''),
                );
              },
            ),
            GoRoute(
              path: "${DvMapFullView.routeName}/:locName/:latitude/:longitude",
              builder: (context, state) {
                return DvMapFullView(
                  title: state.pathParameters["locName"] ?? '',
                  latitude: state.pathParameters["latitude"] ?? '',
                  longitude: state.pathParameters["longitude"] ?? '',
                );
              },
            ),
            GoRoute(
              path: AddRestaurantView.routeName,
              builder: (context, state) => const AddRestaurantView(),
            ),
          ],
        ),
      ),
    );
  }
}
