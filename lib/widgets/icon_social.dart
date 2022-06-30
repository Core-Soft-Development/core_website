import 'package:core_website/widgets/icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconSocial extends StatelessWidget {
  const IconSocial({
    Key? key, this.size = 25,
  }) : super(key: key);

  final double size;

  static const iconData = [
    FontAwesomeIcons.facebookSquare,
    FontAwesomeIcons.twitter,
    FontAwesomeIcons.instagram,
    FontAwesomeIcons.linkedinIn
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: icon(FaIcon(iconData[0],
                color: Colors.white, size: size))),
        const SizedBox(
          width: 15,
        ),
        Expanded(
            child: icon(
          FaIcon(iconData[1], color: Colors.white, size: size,),
        )),
        const SizedBox(
          width: 15,
        ),
        Expanded(
            child: icon(
          FaIcon(iconData[2], color: Colors.white, size: size,),
        )),
        const SizedBox(
          width: 15,
        ),
        Expanded(
            child: icon(FaIcon(iconData[3],
                color: Colors.white, size: size,))),
      ],
    );
  }
}
