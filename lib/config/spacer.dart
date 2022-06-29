import 'package:core_website/config/frame_size.dart';
import 'package:core_website/utils/ui/responsive.dart';
import 'package:flutter/material.dart';

class SpacerPortfolio extends StatelessWidget {
  const SpacerPortfolio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: Responsive.isDesktop(context) ? FrameSize.screenHeight * 0.05 : 2);
  }
}

SizedBox spacerFooter() => const SizedBox(height: 20);

SizedBox spacerTextFooter() => const SizedBox(height: 10);

SizedBox spacerServices() => const SizedBox(width: 32);

SizedBox spacerMenu() => SizedBox(width: FrameSize.screenWidth / 50,);