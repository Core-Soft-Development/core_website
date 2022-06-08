import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/models/circle_picture.dart';
import 'package:core_website/models/right_title_section.dart';
import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.all(50),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        /**
           * Image and background circle
           */
          const CirclePicture(image: 'images/working.png'),
        const SizedBox(width: 10),
        Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          /**
             * Title and Text right
             */
          Stack(alignment: Alignment.centerRight, children: const [
            RightTitleSection(title: "ABOUT US \n", description: 'Share your idea, we will help you with our service \n'),
          ]),
          RichText(
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
                textAlign: TextAlign.justify,
                text: const TextSpan(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. ',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1,
                    )))
        ]))
      ]),
    );
  }
}