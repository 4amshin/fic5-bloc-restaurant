import 'package:fic5_bloc_restaurant/presentation/auth/profile/view/profile_view.dart';
import 'package:fic5_bloc_restaurant/presentation/home/view/home_view.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

class MainNavigationView extends StatefulWidget {
  static const routeName = '/mainNavigation';
  const MainNavigationView({Key? key}) : super(key: key);

  @override
  State<MainNavigationView> createState() => _MainNavigationViewState();
}

class _MainNavigationViewState extends State<MainNavigationView> {
  int _selectedIndex = 0;

  List<Widget> tabItems = const [
    HomeView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabItems[_selectedIndex],
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        iconSize: 30,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: const Icon(
              Icons.home,
              size: 20,
            ),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              Icons.person,
              size: 20,
            ),
            title: const Text('Profile'),
          ),
        ],
      ),
    );
  }
}
