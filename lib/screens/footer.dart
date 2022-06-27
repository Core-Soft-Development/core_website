import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/spacer.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/widgets/icon_social.dart';
import 'package:core_website/widgets/text_footer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  static const faIcon = [
    FaIcon(FontAwesomeIcons.facebookSquare, color: Colors.white),
    FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
    FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
    FaIcon(FontAwesomeIcons.linkedinIn, color: Colors.white)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: FrameSize.screenHeight / 3,
      color: Colors.black,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 140),
          child: Row(
            children: [
              Flexible(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  spacerFooter(),
                  Container(
                      alignment: Alignment.topLeft,
                      height: FrameSize.screenHeight / 15,
                      child: Image.asset(
                        'assets/logos/core_soft_development.png',
                        color: Colors.white,
                      )),
                  const Expanded(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consy ect etur adipisc de elit. Quisque act raqum nunc no dolor sit de amet.',
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                          color: ColorsTheme.textFooter,
                          fontFamily: 'Monserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          height: 1),
                    ),
                  )
                ]),
              ),
              const Spacer(),
              Expanded(
                child: textFooter(' Our service', 'How it works', 'Plan & pricing',
                    'Our works'),
              ),
              const Spacer(),
              Expanded(child: textFooter(' Company', 'Blog', 'Contact us', 'Book a call')),
              const Spacer(),
              SizedBox(
                width: FrameSize.screenWidth / 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: Text('Support',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Monserrat',
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              height: 2)),
                    ),
                    const Expanded(
                      child: Text(
                          'Quisque actraqum nunc no dolor sit ametaugue dolor. Lorem ipsum dolor sit amet, consyect etur.',
                          softWrap: true,
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              color: ColorsTheme.textFooter,
                              fontFamily: 'Monserrat',
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              height: 1)),
                    ),
                    spacerFooter(),
                    const Expanded(child: IconSocial(faIcon: faIcon)),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
