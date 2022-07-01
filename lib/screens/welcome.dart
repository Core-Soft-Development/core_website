import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/config/themes/fond_decoration.dart';
import 'package:core_website/utils/key_widgets.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  /// setting up the homepage

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      key: KeyWidgets.keyWelcome,
      padding: const EdgeInsets.all(50),
      decoration: boxGradient(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: "Building Your Idea & Vision Into Reality \n",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat-Regular",
                        color: ColorsTheme.text,
                        wordSpacing: 1,
                        height: 5),
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
              SizedBox(
                  height: screenSize.height * .9,
                  width: screenSize.width,
                  child: Image.asset('assets/images/background.png'))
            ],
          )
        ],
      ),
    );
  }
}
