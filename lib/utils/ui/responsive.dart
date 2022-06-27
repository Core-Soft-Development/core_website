import 'package:core_website/config/frame_size.dart';
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget? tablet;
  final Widget? mobile;

  const Responsive(
      {Key? key,
      required this.desktop,
      this.tablet,
      required this.mobile})
      : super(key: key);

  static bool isMobile(BuildContext context) {
    return FrameSize.screenWidth < 767;
  }

  static bool isTablet(BuildContext context) {
    return FrameSize.screenWidth >= 768 &&
        FrameSize.screenWidth < 1023;
  }

  static bool isDesktop(BuildContext context) {
    return FrameSize.screenWidth > 1024;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = FrameSize.screenSize;

    if(size.width >= 1024) {
      return desktop;
    } else if (size.width >= 768 && tablet != null) {
      return tablet!;
    } else {
      return mobile!;
    }
  }
}
