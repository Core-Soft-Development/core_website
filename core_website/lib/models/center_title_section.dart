import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class CenterTitleSection extends StatelessWidget {
  final String title;
  final String description;
  const CenterTitleSection({Key? key, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
              text: TextSpan(
                  text: title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Montserrat",
                    color: ColorsTheme.titleColor,
                    wordSpacing: 1,
                    height: 2,
                  ),
                  children: [
                    TextSpan(
                        text: description,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorsTheme.text,
                            fontSize: 40,
                            ))
                  ]),
    );
  }
}