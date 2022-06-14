import 'package:core_website/config/themes/colors_theme.dart';
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
    return Container(
      padding: const EdgeInsets.only(bottom: 100, left: 65, right: 65),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontFamily: "Monserrat",
                  fontWeight: FontWeight.w700,
                  color: ColorsTheme.text,
                  fontSize: 40,
                  wordSpacing: 1,
                  letterSpacing: 1,
                  height: 1.5),
            ),
            Text(
              description,
              style: const TextStyle(
                  fontFamily: "Monserrat",
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: ColorsTheme.subText,
                  wordSpacing: 1,
                  letterSpacing: 1,
                  height: 1),
            ),
            const SizedBox(height: 20,),
            buttonProject("Check Case Study")
          ]),
    );
  }

  
}
