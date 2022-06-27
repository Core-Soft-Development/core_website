import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    Key? key,
    required this.icon,
    required this.titleService,
    required this.contentService, this.heightText = 2.5, this.sizeText = 20,  this.sizeIcon = 50, this.heightText2 = 2, this.sizeText2 = 16,
  }) : super(key: key);

  final String icon;
  final String titleService;
  final String contentService;
  final double heightText;
  final double heightText2;
  final double sizeText;
  final double sizeText2;
  final double sizeIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        alignment: Alignment.center,
                        height: sizeIcon,
                        width: sizeIcon,
                        constraints: BoxConstraints.loose(FrameSize.screenSize),
                        child: Image.asset(icon,
                        color: ColorsTheme.iconColor),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: RichText(
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.visible,
                          text: TextSpan(
                              text: titleService,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: ColorsTheme.hoverColor,
                                  fontWeight: FontWeight.w600,
                                  color: ColorsTheme.titleCard,
                                  fontFamily: 'Montserrat',
                                  fontSize: sizeText,
                                  wordSpacing: 1,
                                  height: heightText),
                              children: [
                                TextSpan(
                                    text: contentService,
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: sizeText2,
                                      fontWeight: FontWeight.w400,
                                      color: ColorsTheme.subText,
                                      height: 2,
                                    ))
                              ],)))
    ]);
  }
}