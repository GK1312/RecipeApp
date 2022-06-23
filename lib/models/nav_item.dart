import 'package:flutter/material.dart';
import 'package:recipe_app/screens/camera/camera_screen.dart';
import 'package:recipe_app/screens/chef_nav/chef_nav_screen.dart';
import 'package:recipe_app/screens/home/home_screen.dart';
import 'package:recipe_app/screens/list/list_screen.dart';
import 'package:recipe_app/screens/user/user_screen.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;

  NavItem({
    required this.id,
    required this.icon,
    required this.destination,
  });

  bool destinationChecker() {
    if (destination != null) {
      return true;
    }
    return false;
  }
}

class NavItems extends ChangeNotifier {
  int selectedIndex = 0;

  void changeNavIndex({required int index}) {
    notifyListeners();
    selectedIndex = index;
  }

  List<NavItem> items = [
    NavItem(
      id: 1,
      icon: "assets/icons/home.svg",
      destination: const HomeScreen(),
    ),
    NavItem(
      id: 2,
      icon: "assets/icons/list.svg",
      destination: const ListScreen(),
    ),
    NavItem(
      id: 3,
      icon: "assets/icons/camera.svg",
      destination: const CameraScreen(),
    ),
    NavItem(
      id: 4,
      icon: "assets/icons/chef_nav.svg",
      destination: const ChefNavScreen(),
    ),
    NavItem(
      id: 5,
      icon: "assets/icons/user.svg",
      destination: const UserScreen(),
    ),
  ];
}
