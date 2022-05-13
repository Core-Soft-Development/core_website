import 'package:core_website/utils/ui/responsive_layout.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  Navbar({Key? key}) : super(key: key);

  final navLinks = ["Home", "About Us", "Porfolio", "Contact Us"];

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: const EdgeInsets.only(left: 18),
        child:
            Text(text, style: const TextStyle(fontFamily: "Montserrat-Bold", color: Colors.white)),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: const LinearGradient(colors: [
                      Colors.deepOrange,
                      Colors.orangeAccent,
                    ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
                child: const Center(
                    child: Text("CSD",
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                    ),
              ),
              const SizedBox(
                width: 16,
              ),
              const Text("Core Soft Development", 
              style: TextStyle(
                fontSize: 26, 
                color: Colors.white))
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [...navItem(), InkWell(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.deepOrange,Colors.orangeAccent],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.orangeAccent.withOpacity(.3),
                              offset: const Offset(0, 8),
                              blurRadius: 8)
                        ]),
                    child: const Material(
                      color: Colors.transparent,
                      child: Center(
                        child: Text(" ",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 18,
                                letterSpacing: 1,
                                fontFamily: "Montserrat-Bold")),
                      ),
                    ),
                  )),
              ],
            )
            else
            Image.network("assets/logos/csd.jpeg", width: 26, height: 26,)
        ],
      ),
    );
  }
}
