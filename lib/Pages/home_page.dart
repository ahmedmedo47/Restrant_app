import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restrant2/data.dart';
import 'package:restrant2/widgets/mainmeal.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          "Salsa",
          style: GoogleFonts.satisfy(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return ContainrMeal(
              imageu: categories[index].image,
              name: categories[index].name,
              id: categories[index].id,
              num: index,
            );
          }),
    );
  }
}
