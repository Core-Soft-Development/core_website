import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerItems extends StatelessWidget {
  DrawerItems({
    Key? key, required this.title, required this.index, required this.callback,
  }) : super(key: key);

  final String title;
  final int index;
  Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback(index),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Montserrat'),
      ),
    );
  }
}
