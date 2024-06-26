import 'package:core_website/utils/ui/large_child.dart';
import 'package:core_website/utils/ui/responsive_layout.dart';
import 'package:core_website/utils/ui/small_child.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
      mediumScreen: SmallChild(),
    );
  }
}