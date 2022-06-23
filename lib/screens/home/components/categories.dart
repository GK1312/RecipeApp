import 'package:flutter/material.dart';
import 'package:recipe_app/config/size_config.dart';
import 'package:recipe_app/constants/constant.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "All",
    "Indian",
    "Italian",
    "Mexican",
    "Chinese",
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize! * 2),
      child: SizedBox(
        height: SizeConfig.defaultSize! * 3.5,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategoriItem(index),
        ),
      ),
    );
  }

  Widget buildCategoriItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          left: SizeConfig.defaultSize! * 2,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultSize! * 2,
          vertical: SizeConfig.defaultSize! * 0.5,
        ),
        decoration: BoxDecoration(
          color: selectedIndex == index
              ? const Color(0xFFEFF3EE)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(
            SizeConfig.defaultSize! * 1.6,
          ),
        ),
        child: Text(
          categories[index],
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: rPrimaryColor,
          ),
        ),
      ),
    );
  }
}
