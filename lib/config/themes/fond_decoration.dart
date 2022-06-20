import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

BoxDecoration boxGradient() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: ColorsTheme.gradientBackground,
        begin: Alignment.bottomLeft,
        end: Alignment.topRight)
    );
  }