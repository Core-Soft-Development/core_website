import 'package:core_website/config/frame_size.dart';
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
/**
 * implementation of the menu bar
 */
    return SliverToBoxAdapter(
      child: PreferredSize(
        preferredSize: Size(FrameSize.screenWidth, 70),
        child: Container(
          constraints: BoxConstraints(maxHeight: FrameSize.screenHeight),
          height: FrameSize.screenHeight / 8,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 135),
          decoration: boxGradient(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logos/core_soft_development.png'),
                SizedBox(width: FrameSize.screenWidth / 5),
                const Expanded(child: MenuItems(title: 'Home', index: 0)),
                const Expanded(child: MenuItems(title: 'Service', index: 1)),
                const Expanded(child: MenuItems(title: 'About Us', index: 2)),
                const Expanded(child: MenuItems(title: 'Client', index: 3)),
                const Expanded(child: MenuItems(title: 'Portfolio', index: 4)),
                const Expanded(child: MenuItems(title: 'Blog', index: 5)),
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
            )),
      ),
    );
  }
}
