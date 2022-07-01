import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuItems extends StatefulWidget {
  MenuItems({Key? key, required this.title, required this.index, required this.callback})
      : super(key: key);

  final String title;
  final int index;
  Function(int) callback;

  @override
  State<MenuItems> createState() => _MenuItemsState();

  static contactItem() {}
}

class _MenuItemsState extends State<MenuItems> {
  final List _isHovering = [false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return SizedBox(
      height: screenSize.height,
      child: InkWell(
        onHover: (value) {
          setState(() {
            value
                ? _isHovering[widget.index] = true
                : _isHovering[widget.index] = false;
          });
        },
        onTap: () => widget.callback(widget.index),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                  color: _isHovering[widget.index]
                      ? ColorsTheme.textMenuHover
                      : ColorsTheme.textMenu,
                  fontWeight: _isHovering[widget.index]
                      ? FontWeight.w700
                      : FontWeight.w600,
                  fontSize: 16,
                  height: 2,
                  fontFamily: 'Montserrat'),
            ),
            Visibility(
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true,
              visible: _isHovering[widget.index],
              child: Container(
                height: 1,
                width: 53,
                color: ColorsTheme.hoverColor,
              ),
            )
          ],
        ),
      ),
    );
  }

  /* InkWell contactItem(BuildContext context) {
    return InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[widget.index] = true : _isHovering[widget.index] = false;
                  });
                },
                onTap: () {},
                child: buttonContact(
                  context,
                  'Contact Us',
                  () => const Contact(),
                  _isHovering, 6),
              );
  } */
}
