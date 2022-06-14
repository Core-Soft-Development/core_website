import 'package:flutter/material.dart';

class ImageProject extends StatelessWidget {
  final String image;
  const ImageProject({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(right: 50, left: 50),
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}
