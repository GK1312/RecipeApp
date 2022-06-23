import 'package:flutter/material.dart';
import 'package:recipe_app/config/size_config.dart';
import 'package:recipe_app/constants/constant.dart';
import 'package:recipe_app/screens/home/components/bottom_nav_bar.dart';
import 'package:recipe_app/screens/user/components/body.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: const ProfileScreen(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: rPrimaryColor,
      centerTitle: true,
      elevation: 0,
      title: const Text("Profile"),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.defaultSize! * 1.6,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
