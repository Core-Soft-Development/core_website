import 'package:core_website/config/spacer.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

Column textFooter(String title, String text, String text1, String text2) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Monserrat',
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              height: 2)),
                    ),
                    spacerTextFooter(),
                    Expanded(child: footerTextButton(text)),
                    spacerTextFooter(),
                    Expanded(child: footerTextButton(text1)),
                    spacerTextFooter(),
                    Expanded(child: footerTextButton(text2)),
                  ],
                );
  }

  SizedBox footerTextButton(String text) {
    return SizedBox(
      child: TextButton(
                          onPressed: null,
                          child: Text(text,
                              style: const TextStyle(
                                  color: ColorsTheme.textFooter,
                                  fontFamily: 'Monserrat',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  height: 1))),
    );
  }