import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restrant2/data.dart';
import 'package:restrant2/model/meal.dart';
import 'package:restrant2/widgets/mainmeal.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String name = data["name"];
    final String id = data["id"];
    List<Meal> filterData = dummyMeals.where((element) {
      return element.categoryNumber.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          name,
          style: GoogleFonts.satisfy(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filterData.length,
        itemBuilder: (context, index) {
          return ContainrMeal(
            imageu: filterData[index].imageUrl,
            name: filterData[index].title,
            id: filterData[index].id,
            num: index,
          );
        },
      ),
    );
  }
}
