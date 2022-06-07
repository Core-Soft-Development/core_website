import 'package:core_website/config/themes/colors_theme.dart';
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
          color: ColorsTheme.menuDrawer,
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Home',
                      style: TextStyle(
                          color: ColorsTheme.textMenuDrawer, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      color: Colors.deepOrange,
                      thickness: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Services',
                      style: TextStyle(
                          color: ColorsTheme.textMenuDrawer, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      color: Colors.deepOrange,
                      thickness: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'About Us',
                      style: TextStyle(
                          color: ColorsTheme.textMenuDrawer, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      color: Colors.deepOrange,
                      thickness: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Porfolio',
                      style: TextStyle(
                          color: ColorsTheme.textMenuDrawer, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      color: Colors.deepOrange,
                      thickness: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Client',
                      style: TextStyle(
                          color: ColorsTheme.textMenuDrawer, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      color: Colors.deepOrange,
                      thickness: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Blog',
                      style: TextStyle(
                          color: ColorsTheme.textMenuDrawer, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      color: Colors.deepOrange,
                      thickness: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Contact Us',
                      style: TextStyle(
                          color: ColorsTheme.textMenuDrawer, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      color: Colors.deepOrange,
                      thickness: 2,
                    ),
                  ),
                  const Expanded(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text('Copyright © 2018',
                        style: TextStyle(
                            color: ColorsTheme.textMenuDrawer, fontSize: 14)),
                  ))
                ],
              ))),
    );
  }
}
