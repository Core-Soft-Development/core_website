import 'package:flutter/material.dart';

import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/themes/fond_decoration.dart';
import 'package:core_website/models/menu.dart';
import 'package:core_website/utils/ui/responsive.dart';

// ignore: must_be_immutable
class Navbar extends StatefulWidget {
  Navbar(this.callback, {Key? key}) : super(key: key);

  Function(int) callback;

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {


  @override
  Widget build(BuildContext context) {
/**
 * implementation of the menu bar
 */
    return SliverToBoxAdapter(
      child: PreferredSize(
        preferredSize: Size(FrameSize.screenWidth, 70),
        child: Container(
          constraints: BoxConstraints(maxHeight: FrameSize.screenHeight),
          height: FrameSize.screenHeight / 8,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 135),
          decoration: boxGradient(),
            child: Responsive(
              desktop: Menu(widget.callback, width: FrameSize.screenWidth / 5, image: 'assets/logos/core_soft_development.png',),
              tablet: Menu(widget.callback, width: 0, image: 'assets/logos/csd.png',),
              mobile: null,)
            ),
      ),
    );
  }
}
