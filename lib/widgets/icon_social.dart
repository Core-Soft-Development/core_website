import 'package:core_website/widgets/icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconSocial extends StatelessWidget {
  const IconSocial({
    Key? key,
    required this.faIcon,
  }) : super(key: key);

  final List<FaIcon> faIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: icon(faIcon[0])),
        const SizedBox(
          width: 15,
        ),
        Expanded(child: icon(faIcon[1])),
        const SizedBox(
          width: 15,
        ),
        Expanded(child: icon(faIcon[2])),
        const SizedBox(
          width: 15,
        ),
        Expanded(child: icon(faIcon[3])),
      ],
    );
  }
}