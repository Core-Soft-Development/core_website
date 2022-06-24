import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/padding.dart';
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

    return Container(
      color: ColorsTheme.backgroundSecond,
      padding: paddingGlobal(),
      child: Column(
        children: [
          Row(children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                  RightTitleSection(
                      title: "TESTIMONIAL \n",
                      description: 'What Our Clients Say \n'),
                  TestamonialClient(
                        content:
                            "\"CSD brought me what I think is the foundation of a job stimulating and user-friendly: strong integration within a team dynamic and challenging in all aspects of my job... \nThis allows me to exploit all my talent and progress quickly in my career\" \n ",
                        name: "\n Oussema Missaoui",
                        compagny: '\n BI Consultant'),
                ],
              ),
            ),
            SizedBox(width: FrameSize.screenWidth / 6),
            Flexible(
              child: Column(
                children: const [
                  PictureTestamonial(picture: 'assets/images/profil.png'),
                ],
              ),
            ),
          ]),
          Row(
            children: [
              Flexible(
                child: Column(
                  children: const [
                    PictureTestamonial(picture: 'assets/images/profil.png'),
                  ],
                ),
              ),
              SizedBox(width: FrameSize.screenWidth / 10),
              Column(
                children: [
                  SizedBox(
                    height: FrameSize.screenHeight / 6,
                  ),
                  const TestamonialClient(
                      content:
                          "\"CSD brought me what I think is the foundation of a job stimulating and user-friendly: strong integration within a team dynamic and challenging in all aspects of my job... \nThis allows me to exploit all my talent and progress quickly in my career\" \n ",
                      name: "\n Oussema Missaoui",
                      compagny: '\n BI Consultant'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
