import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class CirclePicture extends StatelessWidget {
  final String image;
  const CirclePicture({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: FrameSize.screenHeight / 2,
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: ColorsTheme.gradientBackground),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(image))
                    )
    );
  }
}