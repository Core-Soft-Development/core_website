import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

Padding lineSpacer() {
    return const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Divider(
                    color: ColorsTheme.appColor,
                    thickness: 2,
                  ),
                );
  }