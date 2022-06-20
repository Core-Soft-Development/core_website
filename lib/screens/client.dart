import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/models/picture_testamonial.dart';
import 'package:core_website/models/right_title_section.dart';
import 'package:core_website/models/testomanial_client.dart';
import 'package:flutter/material.dart';

class Client extends StatefulWidget {
  const Client({Key? key}) : super(key: key);

  @override
  State<Client> createState() => _ClientState();
}

class _ClientState extends State<Client> {
  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;

    return Container(
      color: ColorsTheme.backgroundSecond,
      padding: const EdgeInsets.only(right:40, left: 40),
      child: Column(
        children: [
          Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /**
                 * Title
                 */
                const SizedBox(height: 100), // for top marge
                    Stack(
                      alignment: Alignment.center,
                      children: const [
                        RightTitleSection(title: "TESTIMONIAL \n", description: 'What Our Clients Say \n'),
                      ],
                      /**
                       * Text
                       */
                    ),
                    const TestamonialClient(
                      content: "\"CSD brought me what I think is the foundation of a job stimulating and user-friendly: strong integration within a team dynamic and challenging in all aspects of my job... \nThis allows me to exploit all my talent and progress quickly in my career\" \n ",
                      name: "\n Oussema Missaoui",
                      compagny: '\n BI Consultant'),
                  ],
                )
                ),
                /**
                * Image and background circle
                */
                const PictureTestamonial(picture: 'assets/images/profil.png'),
              ]),
          Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PictureTestamonial(picture: 'assets/images/profil.png'),
                    Expanded(
                      child: Column(
                        children: const [
                          SizedBox(height: 200,),
                          TestamonialClient(
                        content: "\"CSD brought me what I think is the foundation of a job stimulating and user-friendly: strong integration within a team dynamic and challenging in all aspects of my job... \nThis allows me to exploit all my talent and progress quickly in my career\" \n ",
                        name: "\n Oussema Missaoui",
                        compagny: '\n BI Consultant'),
                        ],
                      ),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}