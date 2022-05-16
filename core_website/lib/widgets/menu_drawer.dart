import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: const Color(0xFFFFAC91),
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Home',
                      style: TextStyle(color: Color(0xFFEF5350), fontSize: 20),
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
                      style: TextStyle(color: Color(0xFFEF5350), fontSize: 20),
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
                      style: TextStyle(color: Color(0xFFEF5350), fontSize: 20),
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
                      style: TextStyle(color: Color(0xFFEF5350), fontSize: 20),
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
                      style: TextStyle(color: Color(0xFFEF5350), fontSize: 20),
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
                      style: TextStyle(color: Color(0xFFEF5350), fontSize: 20),
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
                    child: Text(
                      'Copyright © 2022',
                      style: TextStyle(color: Color(0xFFEF5350), fontSize: 15)
                    ),
                  ))
                ],
              ))),
    );
  }
}
