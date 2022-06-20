import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

BoxDecoration circleGradient() {

return const BoxDecoration(
  gradient: LinearGradient(colors: ColorsTheme.gradientBackground),
  shape: BoxShape.circle
);
}