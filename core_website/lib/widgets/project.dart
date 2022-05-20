import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({
    Key? key,
    required this.title,
    required this.description,
    required this.subtext,
  }) : super(key: key);

  final String title, description, subtext;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontFamily: "Monserrat-Regular",
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 40,
                wordSpacing: 1,
                letterSpacing: 1),
          ),
          Text(
            description,
            style: const TextStyle(
                fontFamily: "Monserrat-Regular",
                fontWeight: FontWeight.normal,
                fontSize: 18,
                wordSpacing: 1,
                letterSpacing: 1),
          ),
          Text(subtext,
              style: const TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: ColorsTheme.primaryColor,
                color: ColorsTheme.primaryColor,
                fontSize: 20,
              ))
        ]);
  }
}
