import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.all(50),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: screenSize.height * 0.8,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(150, 255, 137, 101),
            Color.fromARGB(50, 255, 111, 67),
          ]),
          shape: BoxShape.circle),
          child: SizedBox(
              height: screenSize.height * .9,
              child: Image.asset(
                'images/working.png',
                alignment: Alignment.bottomLeft,
                matchTextDirection: true,
                fit: BoxFit.contain,
              )),
        ),
        const SizedBox(width: 10),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                        color: Color.fromRGBO(217, 39, 39, 1),
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
                              wordSpacing: 1,
                              height: 1.5,
                              letterSpacing: 1)),
                      TextSpan(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. ',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontFamily: 'Monserrat',
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
