import 'package:flutter/material.dart';
import 'package:fork_and_food_app/Mypage.dart';
import 'package:fork_and_food_app/homePage.dart';
import 'package:fork_and_food_app/homeScreenV2.dart' hide runApp;
import 'package:fork_and_food_app/loginScreen.dart';
import 'package:fork_and_food_app/loginScreenV2.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food with us",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white54, surfaceTint: Colors.black54),

      ),
      home:homePageV2()
    );

  }
}

void main()
{
  runApp(MyApp());
}