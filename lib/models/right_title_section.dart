import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class RightTitleSection extends StatelessWidget {
  const RightTitleSection({Key? key, required this.title, required this.description, this.sizeTitle = 18, this.height = 2, this.sizeText = 40, this.heightText = 1.5}) : super(key: key);

  final String title;
  final String description;
  final double sizeTitle;
  final double height;
  final double sizeText;
  final double heightText;

  @override
  Widget build(BuildContext context) {

    return RichText(
        //textAlign: TextAlign.justify,
        text: TextSpan(
            text: title,
            style: TextStyle(
                fontSize: sizeTitle,
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat",
                color: ColorsTheme.titleColor,
                wordSpacing: 1,
                height: height),
            children: [
              TextSpan(
                text: description,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorsTheme.text,
                  fontSize: sizeText,
                  height: heightText
                ),
              ),
            ]));
  }
}
