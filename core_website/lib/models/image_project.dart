import 'package:flutter/material.dart';

class ImageProject extends StatelessWidget {
  final String image;
  const ImageProject({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
                      width: 465,
                      height: screenSize.height / 3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  image),
                              )),
                    );
  }
}