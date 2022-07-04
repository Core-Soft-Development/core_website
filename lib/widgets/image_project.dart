import 'package:core_website/config/frame_size.dart';
import 'package:core_website/utils/ui/responsive.dart';
import 'package:flutter/material.dart';

class ImageProject extends StatelessWidget {
  const ImageProject({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: Responsive.isDesktop(context) ? FrameSize.screenHeight / 2 : FrameSize.screenHeight / 4,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image),
        fit: BoxFit.contain)),
    );
  }
}
