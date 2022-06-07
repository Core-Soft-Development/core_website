import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({
    Key? key,
    required List isHovering,
    required this.index,
    required this.titleMenu,
  }) : _isHovering = isHovering, super(key: key);

  final List _isHovering;
  final index;
  final String titleMenu;

  @override
  Widget build(BuildContext context) {
    return Text(
                      titleMenu,
                      style: TextStyle(
                          color: _isHovering[index] ? Colors.grey : Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    );
  }
}