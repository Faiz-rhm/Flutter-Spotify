import 'package:flutter/material.dart';
import 'package:spotify/constants/colors.dart';

class BrowseCard extends StatelessWidget {
  const BrowseCard({
    Key? key, required this.title, required this.color1, required this.color2,
  }) : super(key: key);

  final String title;
  final String color1;
  final String color2;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width / 2.25,
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            hexToColor(color1),
            hexToColor(color2),
          ]
        )
      ),
      child: Text(title, style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w700
      )),
    );
  }
}
