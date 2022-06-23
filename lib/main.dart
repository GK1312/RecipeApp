import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/models/nav_item.dart';
import 'package:recipe_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavItems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipe App',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0,
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
