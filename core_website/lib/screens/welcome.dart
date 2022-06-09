import 'package:core_website/config/fond_decoration.dart';
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
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat-Regular",
                        color: Colors.black,
                        wordSpacing: 1,
                        height: 1.5),
                    children: [
                      TextSpan(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              wordSpacing: 1,
                              height: 1.5))
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
