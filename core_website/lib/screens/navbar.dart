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
    return Container(
      constraints: BoxConstraints(maxHeight: screenSize.height),
      height: screenSize.height,
      width: screenSize.width,
      padding: const EdgeInsets.only(top: 15, right: 135, left: 135, bottom: 15),
      decoration: boxGradient(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('logos/core_soft_development.png'),
            SizedBox(width: screenSize.width / 5),
            const MenuItems(title: 'Home', index: 0),
            const SizedBox(width: 25,),
            const MenuItems(title: 'Service', index: 1),
            const SizedBox(width: 25,),
            const MenuItems(title: 'About Us', index: 2),
            const SizedBox(width: 25,),
            const MenuItems(title: 'Client', index: 3),
            const SizedBox(width: 25,),
            const MenuItems(title: 'Portfolio', index: 4),
            const SizedBox(width: 25,),
            const MenuItems(title: 'Blog', index: 5),
            const SizedBox(width: 25,),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[6] = true : _isHovering[6] = false;
                });
              },
              onTap: () {},
              child: Column(
                children: [
                  Expanded(
                    child: buttonContact(
                      context,
                      'Contact Us',
                      () => const Contact(),
                      _isHovering, 6),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
