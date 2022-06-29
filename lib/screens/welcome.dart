import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/padding.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/config/themes/fond_decoration.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key, this.heightText = 5, this.heightText2 = 2, required this.height, this.size = 40}) : super(key: key);

  final double heightText, heightText2, height, size;

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  /// setting up the homepage

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: paddingGlobal(),
      decoration: boxGradient(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Building Your Idea & Vision Into Reality \n",
                    style: TextStyle(
                        fontSize: widget.size,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat",
                        color: ColorsTheme.text,
                        wordSpacing: 1,
                        height: widget.heightText),
                    children: [
                      TextSpan(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: ColorsTheme.subText,
                              wordSpacing: 1,
                              height: widget.heightText2))
                    ]),
              ),
            ],
          ),
          SizedBox(
                  height: widget.height,
                  width: FrameSize.screenWidth, // takes up the full width
                  child: Image.asset('assets/images/background.png'))
        ],
      ),
    );
  }
}
