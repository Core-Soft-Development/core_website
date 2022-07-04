import 'package:flutter/material.dart';

import 'package:core_website/config/padding.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/models/right_title_section.dart';
import 'package:core_website/models/text_about.dart';
import 'package:core_website/utils/ui/responsive.dart';
import 'package:core_website/widgets/circle_picture.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsTheme.backgroundFirst,
      padding: paddingGlobal(),
      child: Row(children: [
        /**
           * Image and background circle
           */
        const Flexible(
            child: CirclePicture(image: 'assets/images/working.png')),
        Flexible(
          child: Column(children: const [
            /**
               * Title and Text right
               */
            Responsive(
                desktop: RightTitleSection(
                    title: "ABOUT US \n",
                    description:
                        'Share your idea, we will help you with our service \n'),
                tablet: RightTitleSection(
                  title: "ABOUT US \n",
                  description:
                      'Share your idea, we will help you with our service \n',
                  sizeTitle: 16,
                  sizeText: 30,
                ),
                mobile: RightTitleSection(
                  title: "ABOUT US \n",
                  description:
                      'Share your idea, we will help you with our service \n',
                  sizeTitle: 14,
                  sizeText: 20,
                  heightText: 1.5,
                )),
            Responsive(
                desktop: TextAbout(),
                tablet: TextAbout(
                  size: 16,
                  height: 1.5,
                ),
                mobile: TextAbout(
                  size: 14,
                  height: 1,
                ))
          ]),
        )
      ]),
    );
  }
}
