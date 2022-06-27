import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/themes/fond_decoration.dart';
import 'package:core_website/utils/ui/responsive.dart';
import 'package:core_website/widgets/menu.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
          decoration: boxGradient(),
            child: Responsive(
              desktop: Menu( width: FrameSize.screenWidth / 5, image: 'assets/logos/core_soft_development.png',),
              tablet: const Menu( width: 0, image: 'assets/logos/csd.png', ),
              mobile: null,)
            ),
      ),
    );
  }
}