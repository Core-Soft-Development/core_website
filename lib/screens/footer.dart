import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/widgets/icons.dart';
import 'package:core_website/widgets/text_footer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  static const  faIcon = [
    FaIcon(FontAwesomeIcons.facebookSquare, color: Colors.white),
    FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
    FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
    FaIcon(FontAwesomeIcons.linkedinIn, color: Colors.white)
    ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height / 3,
      color: Colors.black,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 150),
          child: Row(children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                    alignment: Alignment.topLeft,
                    height: screenSize.height / 15,
                    child: Image.asset(
                      'assets/logos/core_soft_development.png',
                      color: Colors.white,
                    )),
                const Expanded(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consy ect etur adipisc de elit. Quisque act raqum nunc no dolor sit de amet.',
                    softWrap: true,
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
            const SizedBox(width: 130),
            Expanded(
              child: textFooter(' Our service', 'How it works',
                  'Plan & pricing', 'Our works'),
            ),
            const SizedBox(width: 130),
            Expanded(
              child: textFooter(
                  ' Company', 'Blog', 'Contact us', 'Book a call'),
            ),
            const SizedBox(width: 130),
            SizedBox(
              width: screenSize.width / 6,
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
                        style: TextStyle(
                            color: ColorsTheme.textFooter,
                            fontFamily: 'Monserrat',
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            height: 1)),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(child: icon(faIcon[0])),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(child: icon(faIcon[1])),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(child: icon(faIcon[2])),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(child: icon(faIcon[3])),
                    ],
                  ),
                ],
              ),
            ),
          ])),
    );
  }
}