import 'package:flutter/material.dart';

import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/spacer.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/utils/ui/responsive.dart';
import 'package:core_website/widgets/icon_social.dart';
import 'package:core_website/widgets/text_footer.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key, this.horizontal = 140,
}) : super(key: key);

  final double horizontal;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: FrameSize.screenHeight / 3,
      color: Colors.black,
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: horizontal),
          child: Row(
            children: [
              Flexible(
                flex: Responsive.isDesktop(context) ? 1 : 2,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  spacerFooter(),
                  Container(
                      alignment: Alignment.topLeft,
                      height: Responsive.isTablet(context) || Responsive.isMobile(context) ? FrameSize.screenHeight / 20 : FrameSize.screenHeight / 15,
                      child: Image.asset(
                        'assets/logos/core_soft_development.png',
                        color: Colors.white,
                      )),
                  Expanded(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consy ect etur adipisc de elit. Quisque act raqum nunc no dolor sit de amet.',
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                          color: ColorsTheme.textFooter,
                          fontFamily: 'Monserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: Responsive.isMobile(context) ? 8 : 12,
                          height: 1),
                    ),
                  )
                ]),
              ),
              const Spacer(),
              Column(
                children: const [
                  Expanded(
                    child: Responsive(
                      desktop: TextFooter(title: ' Our service', text: 'How it works', text1: 'Plan & pricing', text2: 'Our works',),
                      tablet: TextFooter(title: ' Our service', text: 'How it works', text1: 'Plan & pricing', text2: 'Our works', size: 18, font: FontWeight.w600,),
                      mobile: TextFooter(title: ' Our service', text: 'How it works', text1: 'Plan & pricing', text2: 'Our works', size: 10, font: FontWeight.bold,)),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: const [
                  Expanded(
                    child: Responsive(
                      desktop: TextFooter(title: ' Company', text: 'Blog', text1: 'Contact us', text2: 'Book a call'),
                      tablet: TextFooter(title: ' Company', text: 'Blog', text1: 'Contact us', text2: 'Book a call', size: 18, font: FontWeight.w600),
                      mobile: TextFooter(title: ' Company', text: 'Blog', text1: 'Contact us', text2: 'Book a call', size: 10, font: FontWeight.bold,))
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: FrameSize.screenWidth / 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text('Support',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Monserrat',
                              fontSize: Responsive.isMobile(context) ? 18 : 22,
                              fontWeight: FontWeight.w700,
                              height: 2)),
                    ),
                    Expanded(
                      child: Text(
                          'Quisque actraqum nunc no dolor sit ametaugue dolor. Lorem ipsum dolor sit amet, consyect etur.',
                          softWrap: true,
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              color: ColorsTheme.textFooter,
                              fontFamily: 'Monserrat',
                              fontWeight: FontWeight.w300,
                              fontSize: Responsive.isMobile(context) ? 10 : 16,
                              height: 1)),
                    ),
                    spacerFooter(),
                    Expanded(child: IconSocial(size: Responsive.isMobile(context) ? 10 : 25,)),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
