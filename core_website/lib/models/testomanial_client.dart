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
    return RichText(
        maxLines: 20,
        textAlign: TextAlign.left,
        text: TextSpan(
            text: content,
            style: const TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontSize: 20,
                letterSpacing: 1,
                wordSpacing: 1),
            children: [
              TextSpan(
                  text: name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  )),
              TextSpan(
                  text: compagny,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ))
            ]));
  }
}
