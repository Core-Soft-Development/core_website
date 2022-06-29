import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class PictureTestamonial extends StatelessWidget {
  const PictureTestamonial({Key? key, required this.picture, required this.bottom, this.right = 0, this.minHeight = 700,  this.fit = BoxFit.none}) : super(key: key);

  final String picture;
  final double minHeight;
  final double bottom;
  final double right;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {

    return Container(
        height: FrameSize.screenHeight / 4,
        width: FrameSize.screenWidth /4,
        clipBehavior: Clip.none,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: ColorsTheme.gradientBackground,
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
            shape: BoxShape.circle),
        constraints: BoxConstraints(minWidth: 500, minHeight: minHeight),
        child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Stack(children: [
              Positioned(
                bottom: bottom,
                right: right,
                left: 0,
                top: 5,
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(250),
                        bottomRight: Radius.circular(250)),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      picture,
                      matchTextDirection: true,
                      height: FrameSize.screenHeight / 6,
                      fit: fit,
                    )),
              ),
            ])));
  }
}