import 'package:core_website/config/spacer.dart';
import 'package:core_website/widgets/menu_items.dart';
import 'package:core_website/screens/contact.dart';
import 'package:core_website/widgets/button.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({
    Key? key, required this.width, required this.image,
  }) : super(key: key);

  final double width;
  final String image;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  final List _isHovering = [false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ Expanded(
        child: ListView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [
            Image.asset(widget.image, alignment: Alignment.centerLeft),
            SizedBox(width: widget.width),
            const MenuItems(title: 'Home', index: 0),
            spacerMenu(),
            const MenuItems(title: 'Service', index: 1),
            spacerMenu(),
            const MenuItems(title: 'About Us', index: 2),
            spacerMenu(),
            const MenuItems(title: 'Client', index: 3),
            spacerMenu(),
            const MenuItems(title: 'Portfolio', index: 4),
            spacerMenu(),
            const MenuItems(title: 'Blog', index: 5),
            spacerMenu(),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[6] = true : _isHovering[6] = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
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
        ),
      )],
    );
  }
}