import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget? tablet;
  final Widget mobile;

  const Responsive(
      {Key? key,
      required this.desktop,
      this.tablet,
      required this.mobile})
      : super(key: key);

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 640;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 641 &&
        MediaQuery.of(context).size.width < 1007;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 1008;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    
    if(size.width >= 1008) {
      return desktop;
    } else if (size.width >= 641 && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
