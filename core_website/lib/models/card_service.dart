import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class CardService extends StatelessWidget {
  final String icon;
  final String titleService;
  final String contentService;
  const CardService({Key? key, required this.icon, required this.titleService, required this.contentService}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        var screenSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(30),
      width: screenSize.width * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x199E9E9E),
            spreadRadius: 10,
            blurRadius: 80,
            offset: Offset(2, 3),
          )
        ],
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          constraints: BoxConstraints.loose(screenSize),
                          child: Image.asset(icon,
                          color: ColorsTheme.iconColor),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.center,
                          child: RichText(
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                                text: titleService,
                                style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: ColorsTheme.hoverColor,
                                    fontWeight: FontWeight.w600,
                                    color: ColorsTheme.titleCard,
                                    fontFamily: 'Montserrat',
                                    fontSize: 20,
                                    wordSpacing: 1,
                                    height: 2.5),
                                children: [
                                  TextSpan(
                                      text: contentService,
                                      style: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: ColorsTheme.subText,
                                        height: 2,
                                      ))
                                ],)))
      ]),
    );
  }
}