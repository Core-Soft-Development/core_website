import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/utils/ui/responsive.dart';
import 'package:core_website/services/card/card_content.dart';
import 'package:flutter/material.dart';

class CardService extends StatelessWidget {
  final String icon;
  final String titleService;
  final String contentService;
  const CardService({Key? key, required this.icon, required this.titleService, required this.contentService}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(30),
      width: FrameSize.screenWidth * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: ColorsTheme.shadowCard,
            spreadRadius: 10,
            blurRadius: 80,
            offset: Offset(2, 3),
          )
        ],
        borderRadius: BorderRadius.circular(5)
      ),
      child: Responsive(
        desktop: CardContent(icon: icon, titleService: titleService, contentService: contentService),
        tablet: CardContent(icon: icon, titleService: titleService, contentService: contentService, heightText: 1.5, sizeText: 18, heightText2: 1,),
        mobile: CardContent(icon: icon, titleService: titleService, contentService: contentService, heightText: 1, sizeText: 14, heightText2: 0.5, sizeText2: 12, sizeIcon: 25,))
      ,
    );
  }
}

