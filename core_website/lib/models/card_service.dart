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
      padding: const EdgeInsets.all(10),
      width: screenSize.width * 0.45,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x199E9E9E),
            spreadRadius: 10,
            blurRadius: 80,
            offset: Offset(2, 3),
          )
        ]
      ),
      child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          constraints: BoxConstraints.loose(screenSize),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(icon),
                                  fit: BoxFit.fill),
                              shape: BoxShape.rectangle),
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
                                    decorationColor: ColorsTheme.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 20,
                                    wordSpacing: 1,
                                    height: 1.5),
                                children: [
                                  TextSpan(
                                      text: contentService,
                                      style: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ))
                                ],)))
      ]),
    );
  }
}