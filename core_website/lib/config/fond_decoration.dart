import 'package:flutter/material.dart';

BoxDecoration boxGradient() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
        Color.fromARGB(150, 255, 137, 101),
        Color.fromARGB(50, 255, 111, 67),
      ])
    );
  }