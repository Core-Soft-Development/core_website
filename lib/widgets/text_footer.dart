import 'package:core_website/config/spacer.dart';
import 'package:core_website/widgets/text_button_footer.dart';
import 'package:flutter/material.dart';

class TextFooter extends StatelessWidget {
  const TextFooter({
    Key? key,
    required this.title,
    required this.text,
    required this.text1,
    required this.text2,
    this.size = 22,
    this.height = 2,
    this.font = FontWeight.w700,
  }) : super(key: key);

  final String title, text, text1, text2;
  final double size, height;
  final FontWeight font;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(title,
          softWrap: true,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Monserrat',
                  fontSize: size,
                  fontWeight: font,
                  height: height)),
        ),
        const SpacerTextFooter(),
        Expanded(child: TextButtonFooter(text: text,)),
        const SpacerTextFooter(),
        Expanded(child: TextButtonFooter(text: text1)),
        const SpacerTextFooter(),
        Expanded(child: TextButtonFooter(text: text2)),
      ],
    );
  }
}
