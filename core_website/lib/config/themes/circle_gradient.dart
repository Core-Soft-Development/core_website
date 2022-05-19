import 'package:flutter/material.dart';

BoxDecoration circleGradient() {

return const BoxDecoration(
  gradient: LinearGradient(colors: [
            Color.fromARGB(150, 255, 137, 101),
            Color.fromARGB(50, 255, 111, 67),
          ]),
  shape: BoxShape.circle
);
}