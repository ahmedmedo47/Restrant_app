import 'package:flutter/material.dart';
import 'package:restrant2/Pages/home_page.dart';
import 'package:restrant2/Pages/mealscreen.dart';

void main() {
  runApp(const MealApp());
}

class MealApp extends StatelessWidget {
  const MealApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "mealsScreen": (context) => const MealScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
