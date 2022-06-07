import 'package:flutter/material.dart';

class MobileResponsive extends StatelessWidget {
  const MobileResponsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                text: "Building Your Idea & Vision Into Reality",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular",
                  color: Color.fromARGB(148, 235, 203, 105)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Image.network(
                "assets/images/background.png",
                scale: 1,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            
          ],
        ),
      ),
    );
  }
}