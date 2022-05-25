import 'package:flutter/material.dart';

class NavbarItem extends StatelessWidget {
  final String title;
  const NavbarItem(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: Colors.black,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          fontSize: 16),
    );
  }
}
