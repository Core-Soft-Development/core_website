import 'package:core_website/config/themes/fond_decoration.dart';
import 'package:core_website/screens/contact.dart';
import 'package:core_website/widgets/button.dart';
import 'package:core_website/widgets/menu_items.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Navbar extends StatefulWidget {
  Navbar(this.callback, {Key? key}) : super(key: key);

  Function(int) callback;

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
    return SliverToBoxAdapter(
      child: Container(
        constraints: BoxConstraints(maxHeight: screenSize.height),
        height: screenSize.height / 10,
        width: screenSize.width,
        padding: const EdgeInsets.only(top: 15, right: 135, left: 135, bottom: 15),
        decoration: boxGradient(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logos/core_soft_development.png'),
              SizedBox(width: screenSize.width / 5),
              Expanded(child: MenuItems(title: 'Home', index: 0, callback: widget.callback,)),
              Expanded(child: MenuItems(title: 'Service', index: 1, callback: widget.callback,)),
              Expanded(child: MenuItems(title: 'About Us', index: 2, callback: widget.callback,)),
              Expanded(child: MenuItems(title: 'Client', index: 3, callback: widget.callback,)),
              Expanded(child: MenuItems(title: 'Portfolio', index: 4, callback: widget.callback,)),
              Expanded(child: MenuItems(title: 'Blog', index: 5, callback: widget.callback,)),
              Expanded(
                flex: 2,
                child: InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[6] = true : _isHovering[6] = false;
                    });
                  },
                  onTap: () {},
                  child: buttonContact(
                    context,
                    'Contact Us',
                    () => const Contact(),
                    _isHovering, 6),
                ),
              ),
            ],
          )),
    );
  }
}
