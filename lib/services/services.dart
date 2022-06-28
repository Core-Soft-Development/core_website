import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/padding.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/models/center_title_section.dart';
import 'package:core_website/services/card/card_view.dart';
import 'package:core_website/utils/ui/responsive.dart';
import 'package:flutter/material.dart';

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
      child: Column(
        children: [
          const Responsive(
              desktop: CenterTitleSection(
                  title: "SERVICES \n",
                  description: 'A set of digital solution'),
              tablet: CenterTitleSection(
                title: "SERVICES \n",
                description: 'A set of digital solution',
                sizeTitle: 16,
                sizeText: 38,
              ),
              mobile: CenterTitleSection(
                title: "SERVICES \n",
                description: 'A set of digital solution',
                sizeTitle: 14,
                height: 1.5,
                sizeText: 25,
              )),
          const Responsive(
              desktop: SizedBox(height: 75), mobile: SizedBox(height: 35)),
          Responsive(
            desktop: CardView(
              aspectRatio: FrameSize.screenWidth / FrameSize.screenHeight,
            ),
            tablet: CardView(
                aspectRatio:
                    FrameSize.screenWidth / (FrameSize.screenHeight * 1.10)),
            mobile: CardView(
                axisCount: 1,
                aspectRatio:
                    FrameSize.screenWidth / (FrameSize.screenHeight / 1.7)),
          )
        ],
      ),
    );
  }
}
