import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class MenuItems extends StatefulWidget {
  const MenuItems({Key? key, required this.title, required this.index}) : super(key: key);
  
  final String title;
  final int index;

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  final List _isHovering = [false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[widget.index] = true : _isHovering[widget.index] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                  widget.title,
                  style: TextStyle(
                      color: _isHovering[widget.index] ? Colors.black : Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Montserrat'),
                ),
                    Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  visible: _isHovering[widget.index],
                  child: Container(
                    height: 2,
                    width: 20,
                    color: ColorsTheme.textMenuDrawer,
                  ),
                )
                  ],
                ),
              );
  }
}