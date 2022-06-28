import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class TextAbout extends StatelessWidget {
  const TextAbout({
    Key? key, this.size = 18, this.height = 2,
  }) : super(key: key);

  final double size;
  final double height;

  @override
  Widget build(BuildContext context) {
    return RichText(
        overflow: TextOverflow.visible,
        textAlign: TextAlign.start,
        text: TextSpan(
            text:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. ',
            style: TextStyle(
                color: ColorsTheme.subText,
                fontFamily: 'Montserrat',
                fontSize: size,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
                height: height)));
  }
}
