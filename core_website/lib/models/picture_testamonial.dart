import 'package:flutter/material.dart';

class PictureTestamonial extends StatelessWidget {
  final String picture;
  const PictureTestamonial({Key? key, required this.picture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
        height: screenSize.height / 4,
        width: 400,
        clipBehavior: Clip.none,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(50, 255, 111, 67),
              Color.fromARGB(150, 255, 137, 101),
            ]),
            shape: BoxShape.circle),
        constraints: const BoxConstraints.expand(width: 500, height: 700),
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
                      height: 600,
                      fit: BoxFit.none,
                    )),
              ),
            ])));
  }
}