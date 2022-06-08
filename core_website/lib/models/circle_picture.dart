import 'package:flutter/material.dart';

class CirclePicture extends StatelessWidget {
  final String image;
  const CirclePicture({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
       height: screenSize.height / 2,
            width: 491,
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(150, 255, 137, 101),
                  Color.fromARGB(50, 255, 111, 67),
                ]),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(image),
                    alignment: Alignment.center)
                    )
    );
  }
}