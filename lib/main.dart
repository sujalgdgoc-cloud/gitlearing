import 'package:flutter/material.dart';
import 'package:fork_and_food_app/loginScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food with us",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),

      ),
      home: LoginScreen(),);

  }
}

void main()
{
  runApp(MyApp());
}