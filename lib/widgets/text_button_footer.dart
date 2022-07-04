import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/utils/ui/responsive.dart';
import 'package:flutter/material.dart';

class TextButtonFooter extends StatelessWidget {
  const TextButtonFooter({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
          onPressed: null,
          child: Text(text,
              style: TextStyle(
                  color: ColorsTheme.textFooter,
                  fontFamily: 'Monserrat',
                  fontSize: Responsive.isMobile(context) ? 10 : 18,
                  fontWeight: FontWeight.w400,
                  height: 1))),
    );
  }
}