import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/widgets/drawer_items.dart';
import 'package:core_website/widgets/line_spacer.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

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
                  const DrawerItems(title: 'Home'),
                  lineSpacer(),
                  const DrawerItems(title: 'Service'),
                  lineSpacer(),
                  const DrawerItems(title: 'About Us'),
                  lineSpacer(),
                  const DrawerItems(title: 'Client'),
                  lineSpacer(),
                  const DrawerItems(title: 'Portfolio'),
                  lineSpacer(),
                  const DrawerItems(title: 'Blog'),
                  lineSpacer(),
                  const DrawerItems(title: 'Contact Us'),
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