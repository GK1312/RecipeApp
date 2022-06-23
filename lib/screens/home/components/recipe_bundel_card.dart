import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/config/size_config.dart';
import 'package:recipe_app/models/recipe_bundel.dart';

class RecipeBundelCard extends StatelessWidget {
  final RecipeBundle recipeBundle;
  final VoidCallback press;
  const RecipeBundelCard({
    Key? key,
    required this.recipeBundle,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: recipeBundle.color,
          borderRadius: BorderRadius.circular(
            SizeConfig.defaultSize! * 1.8,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(
                  SizeConfig.defaultSize! * 2,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      recipeBundle.title,
                      style: TextStyle(
                        fontSize: SizeConfig.defaultSize! * 2.2,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 0.5,
                    ),
                    Text(
                      recipeBundle.description,
                      style: const TextStyle(
                        color: Colors.white54,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    buildInfoRow(
                      iconSrc: "assets/icons/pot.svg",
                      text: "${recipeBundle.recipes} Recipes",
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 0.5,
                    ),
                    buildInfoRow(
                      iconSrc: "assets/icons/chef.svg",
                      text: "${recipeBundle.chefs} Chefs",
                    ),
                    SizedBox(
                      width: SizeConfig.defaultSize! * 0.5,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                recipeBundle.imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildInfoRow({String? iconSrc, text}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: SizeConfig.defaultSize! * 2.5,
          child: Center(
            child: SvgPicture.asset(
              iconSrc.toString(),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: SizeConfig.defaultSize! * 0.5,
        ),
        Text(
          text,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
