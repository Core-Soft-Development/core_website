import 'package:flutter/material.dart';

import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/widgets/drawer_items.dart';
import 'package:core_website/widgets/line_spacer.dart';

// ignore: must_be_immutable
class MenuDrawer extends StatelessWidget {
  MenuDrawer({Key? key, required this.callback}) : super(key: key);

  Function(int) callback;

  @override
  Widget build(BuildContext context) {
/**
 * setting up the drawer menu
 */
    return Drawer(
      child: Container(
          //color: ColorsTheme.menuDrawer,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: ColorsTheme.gradientColor)),
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  DrawerItems(title: 'Home', index: 0, callback: callback,),
                  lineSpacer(),
                  DrawerItems(title: 'Service', index: 1, callback: callback,),
                  lineSpacer(),
                  DrawerItems(title: 'About Us', index: 2, callback: callback,),
                  lineSpacer(),
                  DrawerItems(title: 'Client', index: 3, callback: callback,),
                  lineSpacer(),
                  DrawerItems(title: 'Portfolio', index: 4, callback: callback,),
                  lineSpacer(),
                  DrawerItems(title: 'Blog', index: 5, callback: callback,),
                  lineSpacer(),
                  DrawerItems(title: 'Contact Us', index: 6, callback: callback,),
                  lineSpacer(),
                  const Expanded(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text('Copyright © 2022',
                        style: TextStyle(
                            color: Colors.white, fontSize: 14)),
                  ))
                ],
              ))),
    );
  }
}
