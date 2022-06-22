import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/config/themes/fond_decoration.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /// setting up the homepage

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(40),
      decoration: boxGradient(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Expanded(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: "Building Your Idea & Vision Into Reality \n",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat",
                          color: ColorsTheme.text,
                          wordSpacing: 1,
                          height: 3),
                      children: [
                        TextSpan(
                            text:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: ColorsTheme.subText,
                                wordSpacing: 1,
                                height: 2))
                      ]),
                ),
              ),
            ],
          ),
          SizedBox(
                  height: screenSize.height / 2,
                  width: screenSize.width,
                  child: Image.asset('assets/images/background.png'))
        ],
      ),
    );
  }
}
