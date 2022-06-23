import 'package:flutter/material.dart';
import 'package:recipe_app/config/size_config.dart';
import 'package:recipe_app/models/recipe_bundel.dart';
import 'package:recipe_app/screens/home/components/categories.dart';
import 'package:recipe_app/screens/home/components/recipe_bundel_card.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Categories(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize! * 2,
              ),
              child: GridView.builder(
                itemCount: recipeBundles.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                  crossAxisSpacing:
                      SizeConfig.orientation == Orientation.landscape
                          ? SizeConfig.defaultSize! * 2
                          : 0,
                  mainAxisSpacing:
                      SizeConfig.orientation == Orientation.landscape ? 30 : 20,
                  childAspectRatio: 1.65,
                ),
                itemBuilder: (context, index) => RecipeBundelCard(
                  recipeBundle: recipeBundles[index],
                  press: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
