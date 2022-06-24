import 'package:core_website/config/padding.dart';
import 'package:core_website/config/spacer.dart';
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
    /**
     * Title
     */
    return Container(
      color: ColorsTheme.backgroundFirst,
      padding: paddingGlobal(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CenterTitleSection(
              title: "SERVICES \n", description: 'A set of digital solution'),
          const SizedBox(height: 75),
          /**
           * Container of services
           * and first block container
           */
          Row(children: [
            const Expanded(
                child: CardService(
                    icon: 'assets/icons/code.png',
                    titleService: 'Website Design \n',
                    contentService:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque')),
            /**
               * second block container
               */
            spacerServices(),
            const Expanded(
                child: CardService(
                    icon: 'assets/icons/phonelink.png',
                    titleService: 'Mobile App Design \n',
                    contentService:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque'))
          ]),
          /**
           * third block container
           */
          const SizedBox(height: 24,),
          Row(
            children: [
              const Expanded(
                child: CardService(
                    icon: 'assets/icons/serveur.png',
                    titleService: 'Website Development \n',
                    contentService:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque'),
              ),
              spacerServices(),
              const Expanded(
                  child: CardService(
                      icon: 'assets/icons/mode.png',
                      titleService: 'Mobile App Development \n',
                      contentService:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque')),
            ],
          ),
        ],
      ),
    );
  }
}
