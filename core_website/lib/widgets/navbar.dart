import 'package:core_website/config/themes/fond_decoration.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/screens/contact.dart';
import 'package:core_website/widgets/button.dart';
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
    return PreferredSize(
      preferredSize: Size(screenSize.width, 70),
      child: Container(
        decoration: boxGradient(),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      width: screenSize.width / 4,
                      child: Image.asset(
                          'logos/core_soft_development.png')),
                  SizedBox(width: screenSize.width / 4),
                  menuItem(0, 'Home'),
                  SizedBox(width: screenSize.width / 60),
                  menuItem(1, 'Service'),
                  SizedBox(width: screenSize.width / 60),
                  menuItem(2, 'About Us'),
                  SizedBox(width: screenSize.width / 60),
                  menuItem(3, 'Portfolio'),
                  SizedBox(width: screenSize.width / 60),
                  menuItem(4, 'Client'),
                  SizedBox(width: screenSize.width / 60),
                  menuItem(5, 'Blog'),
                  SizedBox(width: screenSize.width / 60),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[6] = true : _isHovering[6] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        buttonContact(
                          context, 
                          'Contact Us', 
                          () => const Contact(), 
                          _isHovering, 6)
                        /* Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color.fromARGB(150, 255, 137, 101),
                              Color.fromARGB(50, 255, 111, 67),
                            ]),
                            border:
                                Border.all(color: Colors.transparent, width: 2.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Text(
                            'Contact Us',
                            style: TextStyle(
                              color: _isHovering[6] ? Colors.grey : Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ) */,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  InkWell menuItem(index, String title) {
    return InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[index] = true : _isHovering[index] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                  title,
                  style: TextStyle(
                      color: _isHovering[index] ? Colors.black : Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Montserrat'),
                ),
                    Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  visible: _isHovering[index],
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

  /* Text itemMenu(String titleMenu, index) {
    return Text(
                    titleMenu,
                    style: TextStyle(
                        color: _isHovering[index] ? Colors.black : Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  );
  } */

/* Visibility visibilityHover(index) {
    return Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[index],
                    child: Container(
                      height: 2,
                      width: 20,
                      color: Colors.transparent,
                    ),
                  );
  } */
}
