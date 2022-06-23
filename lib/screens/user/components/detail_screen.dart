import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/config/size_config.dart';
import 'package:recipe_app/constants/constant.dart';

class Details extends StatelessWidget {
  final String name, image;
  final VoidCallback press;
  const Details({
    Key? key,
    required this.name,
    required this.image,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: defaultSize * 2,
          vertical: defaultSize * 3,
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(image),
              SizedBox(
                width: defaultSize * 2,
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: defaultSize * 1.6,
                  color: rTextLightColor,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: defaultSize * 1.6,
                color: rTextLightColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
