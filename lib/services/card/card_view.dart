import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/services/card/card_service.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({
    Key? key, required this.aspectRatio, this.axisCount = 2,
  }) : super(key: key);

  final double aspectRatio;
  final int axisCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsTheme.backgroundFirst,
      child: GridView(
        primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: axisCount,
      mainAxisSpacing: 25,
      crossAxisSpacing: 35,
      childAspectRatio: aspectRatio
      ),
      shrinkWrap: true,
      children: const [
        CardService(
              icon: 'assets/icons/code.png',
              titleService: 'Website Design \n',
              contentService:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque'),
        CardService(
              icon: 'assets/icons/phonelink.png',
              titleService: 'Mobile App Design \n',
              contentService:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque'),
        CardService(
                icon: 'assets/icons/serveur.png',
                titleService: 'Website Development \n',
                contentService:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque'),
        CardService(
                icon: 'assets/icons/mode.png',
                titleService: 'Mobile App Development \n',
                contentService:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque'),
      ],),
    );
  }
}
