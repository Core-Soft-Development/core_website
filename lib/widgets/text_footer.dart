import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

Column textFooter(String title, String text, String text1, String text2) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Monserrat',
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            height: 2)),
                    const SizedBox(height: 20),
                    footerTextButton(text),
                    const SizedBox(height: 20),
                    footerTextButton(text1),
                    const SizedBox(height: 20),
                    footerTextButton(text2),
                  ],
                );
  }

  TextButton footerTextButton(String text) {
    return TextButton(
                        onPressed: null,
                        child: Text(text,
                            style: const TextStyle(
                                color: ColorsTheme.textFooter,
                                fontFamily: 'Monserrat',
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1)));
  }