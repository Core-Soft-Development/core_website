import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({ Key? key }) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: ColorsTheme.backgroundFirst,
      padding: const EdgeInsets.all(50),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          /**
           * Image and background circle
           */
          height: screenSize.height / 2,
          width: 491,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(150, 255, 137, 101),
                Color.fromARGB(50, 255, 111, 67),
              ]),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/working.png'),
                alignment: Alignment.center))
        ),
        const SizedBox(width: 10),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /**
             * Text right
             */
            Stack(alignment: Alignment.centerRight, children: [
              RichText(
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
                textAlign: TextAlign.justify,
                text: const TextSpan(
                    text: "ABOUT US \n",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Montserrat-Regular",
                        color: ColorsTheme.primaryColor,
                        wordSpacing: 1,
                        height: 1.5),
                    children: [
                      TextSpan(
                          text:
                              'Share your idea, we will help you with our service \n',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 40,
                              letterSpacing: 1,
                              ),
                              ),
                      TextSpan(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. ',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1,
                          ))
                    ]),
              ),
            ]),
          ],
        ))
      ]),
    );
  }
}