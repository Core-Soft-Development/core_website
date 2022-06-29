import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class TestamonialClient extends StatelessWidget {
  const TestamonialClient(
      {Key? key,
      required this.content,
      required this.name,
      required this.compagny, this.textSize = 20, this.textHeight = 2, this.sizeName = 24, this.heightName = 2.5})
      : super(key: key);

  final String content;
  final String name;
  final String compagny;
  final double textSize;
  final double textHeight;
  final double sizeName;
  final double heightName;


  @override
  Widget build(BuildContext context) {

    return Container(
      width: FrameSize.screenWidth / 2,
      padding: const EdgeInsets.only(top: 24, left: 10),
      child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
              text: content,
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: ColorsTheme.contentTestamonial,
                  fontFamily: 'Montserrat',
                  fontSize: textSize,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  wordSpacing: 1,
                  height: textHeight),
              children: [
                TextSpan(
                    text: name,
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: sizeName,
                        height: heightName)),
                TextSpan(
                    text: compagny,
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: textSize,
                        height: textHeight))
              ])),
    );
  }
}
