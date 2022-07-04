import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/utils/ui/responsive.dart';
import 'package:core_website/widgets/button.dart';
import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({
    Key? key,
    required this.title,
    required this.description, this.size = 40, this.height = 1.5, this.textSize = 18}) : super(key: key);

  final String title, description;
  final double size, height, textSize;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: Responsive.isDesktop(context) || Responsive.isTablet(context) ? const EdgeInsets.only(bottom: 100, left: 65, right: 65) : const EdgeInsets.only(bottom: 50, left: 10, right: 10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // fixed text on the left
          children: [
            Text(
              title,
              style: TextStyle(
                  fontFamily: "Monserrat",
                  fontWeight: FontWeight.w700,
                  color: ColorsTheme.text,
                  fontSize: size,
                  wordSpacing: 1,
                  letterSpacing: 1,
                  height: height),
            ),
            SizedBox(
              width: FrameSize.screenWidth / 3,
              child: Text(
                description,
                softWrap: true,
                overflow: TextOverflow.visible,
                style: TextStyle(
                    fontFamily: "Monserrat",
                    fontWeight: FontWeight.w400,
                    fontSize: textSize,
                    color: ColorsTheme.subText,
                    wordSpacing: 1,
                    letterSpacing: 1,
                    height: 1),
              ),
            ),
            const SizedBox(height: 20),
            Responsive(
              desktop: buttonProject("Check Case Study", 20),
              tablet: buttonProject("Check Case Study", 20),
              mobile: buttonProject("Check Case Study", 12))
          ]),
    );
  }
}