import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class TestamonialClient extends StatelessWidget {
  final String content;
  final String name;
  final String compagny;

  const TestamonialClient(
      {Key? key,
      required this.content,
      required this.name,
      required this.compagny})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: FrameSize.screenWidth / 2,
      padding: const EdgeInsets.only(top: 24, left: 10),
      child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
              text: content,
              style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  color: ColorsTheme.contentTestamonial,
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  wordSpacing: 1,
                  height: 2),
              children: [
                TextSpan(
                    text: name,
                    style: const TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        height: 2.5)),
                TextSpan(
                    text: compagny,
                    style: const TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        height: 2))
              ])),
    );
  }
}
