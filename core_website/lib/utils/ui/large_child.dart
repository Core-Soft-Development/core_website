import 'package:flutter/material.dart';

class LargeChild extends StatelessWidget {
  const LargeChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.center,
            widthFactor: .6,
            child: Image.network("assets/images/background.png", scale: .85),
          ),
          FractionallySizedBox(
            alignment: Alignment.center,
            widthFactor: .6,
            child: Padding(
              padding: const EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "Building Your Idea & Vision Into Reality",
                        style:
                            TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat-Regular",
                              color: Color.fromARGB(148, 235, 203, 105)),
                        ),
                        ),
                          const SizedBox(
                            height: 40,
                          )
                ]),
              ),
          )
        ],
      ),
    );
  }
}