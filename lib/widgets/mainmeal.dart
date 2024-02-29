import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainrMeal extends StatelessWidget {
  const ContainrMeal(
      {super.key,
      required this.imageu,
      required this.name,
      required this.num,
      required this.id});
  final String imageu;
  final String name;
  final int num;
  final String id;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: num % 2 == 0
            ? const BorderRadius.only(
                topRight: Radius.circular(40.0),
                bottomLeft: Radius.circular(40.0),
              )
            : const BorderRadius.only(
                topLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              "mealsScreen",
              arguments: {
                "id": id,
                "name": name,
              },
            );
          },
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                height: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(imageu),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                color: Colors.red[50],
                child: Text(
                  name,
                  style: GoogleFonts.satisfy(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
