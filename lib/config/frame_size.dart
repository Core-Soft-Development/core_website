import 'package:flutter/material.dart';

class FrameSize {

  static late MediaQueryData mediaQueryData;
  static late Size screenSize;
  static late double screenWidth;
  static late double screenHeight;

  static void init ({required context}) {
    mediaQueryData = MediaQuery.of(context);
    screenSize = mediaQueryData.size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
  }
}