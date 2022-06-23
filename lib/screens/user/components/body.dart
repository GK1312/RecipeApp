import 'package:flutter/material.dart';
import 'package:recipe_app/config/size_config.dart';
import 'package:recipe_app/screens/user/components/detail_screen.dart';
import 'package:recipe_app/screens/user/components/info_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Info(
            name: "John Doe",
            email: "johndoe01@gmail.com",
            image: "assets/images/pic.png",
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 2,
          ),
          Details(
            image: "assets/icons/bookmark_fill.svg",
            name: "Saved Recipes",
            press: () {},
          ),
          Details(
            image: "assets/icons/chef_color.svg",
            name: "Super Plan",
            press: () {},
          ),
          Details(
            image: "assets/icons/language.svg",
            name: "Change Language",
            press: () {},
          ),
          Details(
            image: "assets/icons/info.svg",
            name: "Help",
            press: () {},
          ),
        ],
      ),
    );
  }
}
