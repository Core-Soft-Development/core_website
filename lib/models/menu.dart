import 'package:flutter/material.dart';

import 'package:core_website/config/spacer.dart';
import 'package:core_website/screens/contact.dart';
import 'package:core_website/widgets/button.dart';
import 'package:core_website/widgets/menu_items.dart';

class Menu extends StatefulWidget {
  const Menu(this.scrollCallback, {
    Key? key, required this.width, required this.image,
  }) : super(key: key);

  final double width;
  final String image;
  final Function(int) scrollCallback;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  final List _isHovering = [false, false, false, false, false, false];

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
            MenuItems(title: 'Home', index: 0, callback: widget.scrollCallback,),
            spacerMenu(),
            MenuItems(title: 'Service', index: 1, callback: widget.scrollCallback,),
            spacerMenu(),
            MenuItems(title: 'About Us', index: 2, callback: widget.scrollCallback,),
            spacerMenu(),
            MenuItems(title: 'Client', index: 3, callback: widget.scrollCallback,),
            spacerMenu(),
            MenuItems(title: 'Portfolio', index: 4, callback: widget.scrollCallback,),
            spacerMenu(),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[5] = true : _isHovering[5] = false;
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
                      _isHovering, 5),
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
