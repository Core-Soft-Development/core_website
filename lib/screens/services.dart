import 'package:flutter/material.dart';

import 'package:core_website/config/padding.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/models/card_view.dart';
import 'package:core_website/models/center_title_section.dart';
import 'package:core_website/utils/ui/responsive.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    /**
     * Title
     */
    return Container(
      color: ColorsTheme.backgroundFirst,
      padding: paddingGlobal(),
      child: Column(children: [
        const Responsive(
            desktop: CenterTitleSection(
                title: "SERVICES \n", description: 'A set of digital solution'),
            tablet: CenterTitleSection(
              title: "SERVICES \n",
              description: 'A set of digital solution',
              sizeTitle: 16,
              sizeText: 30,
            ),
            mobile: CenterTitleSection(
              title: "SERVICES \n",
              description: 'A set of digital solution',
              sizeTitle: 14,
              height: 1.5,
              sizeText: 20,
            )),
        SizedBox(
            height:
                Responsive.isDesktop(context) || Responsive.isTablet(context)
                    ? 75
                    : 35),
        const Responsive(
            desktop: CardView(), tablet: CardView(), mobile: CardView()),
      ]),
    );
  }
}
