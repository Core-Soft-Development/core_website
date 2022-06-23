import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class PictureTestamonial extends StatelessWidget {
  final String picture;
  const PictureTestamonial({Key? key, required this.picture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
        height: screenSize.height / 4,
        width: screenSize.width /4,
        clipBehavior: Clip.none,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: ColorsTheme.gradientBackground,
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
            shape: BoxShape.circle),
        constraints: const BoxConstraints(minWidth: 500, minHeight: 700),
        child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Stack(children: [
              Positioned(
                bottom: 90,
                right: 0,
                left: 0,
                top: 20,
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(250),
                        bottomRight: Radius.circular(250)),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      picture,
                      matchTextDirection: true,
                      height: screenSize.height / 6,
                      fit: BoxFit.none,
                    )),
              ),
            ])));
  }
}