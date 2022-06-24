import 'package:flutter/material.dart';

class ImageProject extends StatelessWidget {
  final String image;
  const ImageProject({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Image.asset(
      image,
      fit: BoxFit.fill,
    );
  }
}
