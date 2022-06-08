import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/models/card_service.dart';
import 'package:core_website/models/center_title_section.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    /**
     * Title
     */
    return Container(
      color: ColorsTheme.backgroundFirst,
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(alignment: Alignment.topCenter, children: [
          const CenterTitleSection(title: "SERVICES \n", description: 'A set of digital solution'),
            SizedBox(
              height: screenSize.height / 6,
              width: screenSize.width,
            )
          ]),
          /**
           * Container of services
           * and first block container
           */
          Container(
              padding: const EdgeInsets.all(10),
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CardService(icon: 'assets/icons/code.png', titleService: 'Website Design \n', contentService: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque'),
                  /**
                   * second block container
                   */
                  CardService(icon: 'assets/icons/phonelink.png', titleService: 'Mobile App Design \n', contentService: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque')])),
          /**
           * third block container
           */
          Container(
              padding: const EdgeInsets.all(10),
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CardService(icon: 'assets/icons/serveur.png', titleService: 'Website Development \n', contentService: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque'),
                  /**
                   * fourth block container
                   */
                  CardService(icon: 'assets/icons/mode.png', titleService: 'Mobile App Development \n', contentService: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque')
                ],
              ))
        ],
      ),
    );
  }
}