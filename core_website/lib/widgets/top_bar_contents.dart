import 'package:core_website/widgets/item_menu.dart';
import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;
  const TopBarContents(this.opacity, {Key? key}) : super(key: key);

  @override
  State<TopBarContents> createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  
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
          color: Colors.deepOrangeAccent.withOpacity(widget.opacity),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: screenSize.width / 4,
                    child: Image.asset(
                        'logos/core_soft_development.png')),
                SizedBox(width: screenSize.width / 4),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[0] = true : _isHovering[0] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ItemMenu(isHovering: _isHovering, index: 0, titleMenu: 'Home',),
                      const SizedBox(height: 5),
                      visibilityHover(0)
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 45),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[1] = true : _isHovering[1] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ItemMenu(isHovering: _isHovering, index: 1, titleMenu: 'Service',),
                      const SizedBox(height: 5),
                      visibilityHover(1)
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 45),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[2] = true : _isHovering[2] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ItemMenu(isHovering: _isHovering, index: 2, titleMenu: 'About Us',),
                      const SizedBox(height: 5),
                      visibilityHover(2)
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 45),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[3] = true : _isHovering[3] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ItemMenu(isHovering: _isHovering, index: 3, titleMenu: 'Portfolio',),
                      const SizedBox(height: 5),
                      visibilityHover(3)
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 45),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[4] = true : _isHovering[4] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ItemMenu(isHovering: _isHovering, index: 4, titleMenu: 'Client',),
                      const SizedBox(height: 5),
                      visibilityHover(4)
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 45),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[5] = true : _isHovering[5] = false;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ItemMenu(isHovering: _isHovering, index: 5, titleMenu: 'Blog',),
                      const SizedBox(height: 5),
                      visibilityHover(5)
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 45),
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
                      Container(
                        alignment: Alignment.center,
                        width: 120,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(150, 255, 137, 101),
                            Color.fromARGB(50, 255, 111, 67),
                          ]),
                          border:
                              Border.all(color: Colors.transparent),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        child: ItemMenu(isHovering: _isHovering, index: 6, titleMenu: 'Contact Us',),
                      ),
                      const SizedBox(height: 5),
                      visibilityHover(6),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Visibility visibilityHover(index) {
    return Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[index],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.orangeAccent,
                      ),
                    );
  }
}