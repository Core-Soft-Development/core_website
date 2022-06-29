import 'package:core_website/widgets/card_service.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(
              child: CardService(
                  icon: 'assets/icons/code.png',
                  titleService: 'Website Design \n',
                  contentService:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque'),
            ),
            SizedBox(width: 32),
            Expanded(
              child: CardService(
                  icon: 'assets/icons/phonelink.png',
                  titleService: 'Mobile App Design \n',
                  contentService:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque'),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: const [
            Expanded(
              child: CardService(
                  icon: 'assets/icons/serveur.png',
                  titleService: 'Website Development \n',
                  contentService:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque'),
            ),
            SizedBox(width: 32),
            Expanded(
              child: CardService(
                  icon: 'assets/icons/mode.png',
                  titleService: 'Mobile App Development \n',
                  contentService:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque et consectetur auctor gravida mauris tempus pellentesque'),
            ),
          ],
        ),
      ],
    );
  }
}
