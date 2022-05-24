import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {

   int selectedIndex = 0;
   int hoverIndex = 0;
   List<String> drawItems = [
    "Home",
    "Service",
    "About Us",
    "Portfolio",
    "Client",
    "Blog",
    "Contact Us"
  ];

  @override
  Widget build(BuildContext context) {
/**
 * setting up the drawer menu
 */
    return Drawer(
      child: Container(
          color: ColorsTheme.menuDrawer,
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                      drawItems.length, (index) => buildDrawitem(index))))),
    );
  }

  Widget buildDrawitem(int index) => InkWell(
    onTap: () {
      setState(() {
        selectedIndex = index;
      });
    },
    onHover: (value) {
      setState(() {
        value ? hoverIndex = index : hoverIndex = selectedIndex;
      });
    },
    child: Container(
      constraints: const BoxConstraints(maxHeight: 60),
      alignment: Alignment.center,
      child: Stack(
            alignment: Alignment.center,
            children: [
              Text(drawItems[index],
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                                        fontFamily: "Montserrat",
                      color: ColorsTheme.textMenuDrawer, fontSize: 16)
                      ),
               const Padding(
                 padding:  EdgeInsets.only(top: 50.0),
                 child: Divider(color: Colors.deepOrangeAccent,
                        thickness: 2),
               ),
            ],
          ),
    ),
  );
}

/**
 * Drawer initial
 */
/* [
                  InkWell(
                    onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Home())),
                    child: const Text(
                      'Home',
                      style: TextStyle(
                          color: ColorsTheme.textMenuDrawer, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      color: Colors.deepOrange,
                      thickness: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Services',
                      style: TextStyle(
                          color: ColorsTheme.textMenuDrawer, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      color: Colors.deepOrange,
                      thickness: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'About Us',
                      style: TextStyle(
                          color: ColorsTheme.textMenuDrawer, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      color: Colors.deepOrange,
                      thickness: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Porfolio',
                      style: TextStyle(
                          color: ColorsTheme.textMenuDrawer, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      color: Colors.deepOrange,
                      thickness: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Client',
                      style: TextStyle(
                          color: ColorsTheme.textMenuDrawer, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      color: Colors.deepOrange,
                      thickness: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Blog',
                      style: TextStyle(
                          color: ColorsTheme.textMenuDrawer, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      color: Colors.deepOrange,
                      thickness: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Contact Us',
                      style: TextStyle(
                          color: ColorsTheme.textMenuDrawer, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      color: Colors.deepOrange,
                      thickness: 2,
                    ),
                  ),
                  const Expanded(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text('Copyright © 2022',
                        style: TextStyle(
                            color: ColorsTheme.textMenuDrawer, fontSize: 14)),
                  ))
                ], */