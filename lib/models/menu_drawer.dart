import 'package:flutter/material.dart';

import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/line_spacer.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/widgets/drawer_items.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer(this.scrollCallback, {Key? key}) : super(key: key);

  final Function(int) scrollCallback;

  @override
  Widget build(BuildContext context) {
/**
 * setting up the drawer menu
 */
    return Drawer(
      width: FrameSize.screenWidth / 3,
      child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: ColorsTheme.gradientColor)),
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  DrawerItems(title: 'Home', index: 0, callback: scrollCallback),
                  lineSpacer(),
                  DrawerItems(title: 'Service', index: 1, callback: scrollCallback),
                  lineSpacer(),
                  DrawerItems(title: 'About Us', index: 2, callback: scrollCallback),
                  lineSpacer(),
                  DrawerItems(title: 'Client', index: 3, callback: scrollCallback),
                  lineSpacer(),
                  DrawerItems(title: 'Portfolio', index: 4, callback: scrollCallback),
                  lineSpacer(),
                  DrawerItems(title: 'Contact Us', index: 5, callback: scrollCallback),
                  lineSpacer(),
                  const Expanded(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text('Copyright © 2022',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontSize: 14)),
                  ))
                ],
              ))),
    );
  }
}
