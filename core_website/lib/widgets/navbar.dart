import 'package:core_website/config/themes/fond_decoration.dart';
import 'package:core_website/screens/contact.dart';
import 'package:core_website/widgets/button.dart';
import 'package:core_website/widgets/menu_items.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  final List _isHovering = [false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
/**
 * implementation of the menu bar
 */
    return PreferredSize(
      preferredSize: Size(screenSize.width, 70),
      child: Container(
        decoration: boxGradient(),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      width: screenSize.width / 4,
                      child: Image.asset(
                          'logos/core_soft_development.png')),
                  SizedBox(width: screenSize.width / 4),
                  const MenuItems(title: 'Home', index: 0),
                  SizedBox(width: screenSize.width / 60),
                  const MenuItems(title: 'Service', index: 1,),
                  SizedBox(width: screenSize.width / 60),
                  const MenuItems(title: 'About Us', index: 2),
                  SizedBox(width: screenSize.width / 60),
                  const MenuItems(title: 'Portfolio', index: 3),
                  SizedBox(width: screenSize.width / 60),
                  const MenuItems(title: 'Client', index: 4,),
                  SizedBox(width: screenSize.width / 60),
                  const MenuItems(title: 'Blog', index: 5),
                  SizedBox(width: screenSize.width / 60),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[6] = true : _isHovering[6] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        buttonContact(
                          context, 
                          'Contact Us', 
                          () => const Contact(), 
                          _isHovering, 6),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
