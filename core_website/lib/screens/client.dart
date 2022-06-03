import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/utils/key_widgets.dart';
import 'package:flutter/material.dart';

class Client extends StatefulWidget {
  const Client({Key? key}) : super(key: key);

  @override
  State<Client> createState() => _ClientState();
}

class _ClientState extends State<Client> {
  @override
  Widget build(BuildContext context) {
        var screenSize = MediaQuery.of(context).size;

    return Container(
      key: KeyWidgets.keyClient,
      color: ColorsTheme.backgroundSecond,
      padding: const EdgeInsets.all(50),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /**
             * Text Left
             */
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                RichText(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 20,
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                        text: "TESTIMONIAL \n",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Montserrat-Regular",
                            color: ColorsTheme.primaryColor,
                            wordSpacing: 1,
                            height: 1.5),
                        children: [
                          TextSpan(
                              text: 'What Our Clients Say \n \n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 40,
                                letterSpacing: 1,
                              )),
                          TextSpan(
                            text:
                                "\"CSD brought me what I think is the foundation of a job stimulating and user-friendly: strong integration within a team dynamic and challenging in all aspects of my job... \nThis allows me to exploit all my talent and progress quickly in my career\" \n ",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                                fontSize: 20,
                                letterSpacing: 1,
                                wordSpacing: 1),
                          ),
                          TextSpan(
                              text: "\n Oussema Missaoui",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 24,
                                letterSpacing: 1,
                              )),
                          TextSpan(
                              text: '\n BI Consultant',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 20,
                                letterSpacing: 1,
                              ))
                        ]))
              ],
            ),
            const SizedBox(width: 20),
          ],
        )),
        /**
         * Image and background circle
         */
        Container(
          height: screenSize.height / 2,
          width: 491,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(50, 255, 111, 67),
                Color.fromARGB(150, 255, 137, 101),
              ]),
              shape: BoxShape.circle),
          child: SizedBox(
            height: 465,
              child: Image.asset(
                'images/profil.png',
                alignment: Alignment.center,
                matchTextDirection: true,
                fit: BoxFit.none,
              )),
        )
      ]),
    );
  }
}
