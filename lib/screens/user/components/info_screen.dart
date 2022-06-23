import 'package:flutter/material.dart';
import 'package:recipe_app/config/size_config.dart';
import 'package:recipe_app/constants/constant.dart';

class Info extends StatelessWidget {
  final String name, email, image;

  const Info({
    Key? key,
    required this.name,
    required this.email,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return SizedBox(
      height: defaultSize * 24,
      child: Stack(
        children: [
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: defaultSize * 15,
              color: rPrimaryColor,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: defaultSize * 14,
                  width: defaultSize * 14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: defaultSize * 0.8,
                    ),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "John Doe",
                  style: TextStyle(
                    fontSize: defaultSize * 2.2,
                    color: rTextColor,
                  ),
                ),
                SizedBox(
                  height: defaultSize / 2,
                ),
                const Text(
                  "Johndoe01@gmail.com",
                  style: TextStyle(
                    color: Color(0xFF8492A2),
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
