import 'package:core_website/widgets/button.dart';
import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontFamily: "Monserrat",
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 40,
                wordSpacing: 1,
                letterSpacing: 1),
          ),
          Text(
            description,
            style: const TextStyle(
                fontFamily: "Monserrat",
                fontWeight: FontWeight.normal,
                fontSize: 18,
                wordSpacing: 1,
                letterSpacing: 1),
          ),
          buttonProject("Check Case Study")
        ]);
  }

  
}
