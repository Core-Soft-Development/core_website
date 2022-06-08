import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class RightTitleSection extends StatelessWidget {
  final String title;
  final String description;
  const RightTitleSection({Key? key, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        maxLines: 10,
        textAlign: TextAlign.justify,
        text: TextSpan(
            text: title,
            style: const TextStyle(
                fontSize: 18,
                fontFamily: "Montserrat",
                color: ColorsTheme.primaryColor,
                wordSpacing: 1,
                height: 1.5),
            children: [
              TextSpan(
                text: description,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
            ]));
  }
}
