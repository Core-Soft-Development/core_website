import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/padding.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/models/picture_testamonial.dart';
import 'package:core_website/models/right_title_section.dart';
import 'package:core_website/models/testomanial_client.dart';
import 'package:core_website/utils/ui/responsive.dart';
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
                Responsive(
                  desktop: RightTitleSection(
                      title: "TESTIMONIAL \n",
                      description: 'What Our Clients Say \n'),
                  tablet: RightTitleSection(
                      title: "TESTIMONIAL \n",
                      description: 'What Our Clients Say \n',
                      sizeTitle: 16,
                      sizeText: 30,),
                  mobile: RightTitleSection(
                      title: "TESTIMONIAL \n",
                      description: 'What Our Clients Say \n',
                      sizeTitle: 14,
                      sizeText: 20,
                      heightText: 1.5,),
                      ),
                  Responsive(
                    desktop: TestamonialClient(
                        content:
                            "\"CSD brought me what I think is the foundation of a job stimulating and user-friendly: strong integration within a team dynamic and challenging in all aspects of my job... \nThis allows me to exploit all my talent and progress quickly in my career\" \n ",
                        name: "\n Oussema Missaoui",
                        compagny: '\n BI Consultant'),
                    tablet: TestamonialClient(
                        content:
                            "\"CSD brought me what I think is the foundation of a job stimulating and user-friendly: strong integration within a team dynamic and challenging in all aspects of my job... \nThis allows me to exploit all my talent and progress quickly in my career\" \n ",
                        name: "\n Oussema Missaoui",
                        compagny: '\n BI Consultant',
                        textHeight: 1.5,
                        textSize: 18,
                        sizeName: 22,
                        heightName: 2),
                    mobile: TestamonialClient(
                        content:
                            "\"CSD brought me what I think is the foundation of a job stimulating and user-friendly: strong integration within a team dynamic and challenging in all aspects of my job... \nThis allows me to exploit all my talent and progress quickly in my career\" \n ",
                        name: "\n Oussema Missaoui",
                        compagny: '\n BI Consultant',
                        textHeight: 1,
                        textSize: 14,
                        sizeName: 20,
                        heightName: 1.5)),
                ],
              ),
            ),
            SizedBox(width: FrameSize.screenWidth / 6),
            Flexible(
              child: Column(
                children: 
                const [
                  Responsive(
                  desktop: PictureTestamonial(picture: 'assets/images/profil.png', bottom: 90),
                  tablet: PictureTestamonial(picture: 'assets/images/profil.png', bottom: 90, right: 1, minHeight: 490, fit: BoxFit.fill,),
                  mobile: PictureTestamonial(picture: 'assets/images/profil.png', bottom: 105, minHeight: 350, fit: BoxFit.cover,)),
                ],
              ),
            ),
          ]),
          const SizedBox(height: 20,),
          Row(
            children: [
              Flexible(
                child: Column(
                  children: const [
                    Responsive(
                      desktop: PictureTestamonial(picture: 'assets/images/profil2.png', bottom: 100,),
                      tablet: PictureTestamonial(picture: 'assets/images/profil2.png', bottom: 100, right: 1, minHeight: 490, fit: BoxFit.fill,),
                      mobile: PictureTestamonial(picture: 'assets/images/profil2.png', bottom: 100, minHeight: 350,fit: BoxFit.cover,)),
                  ],
                ),
              ),
              SizedBox(width: FrameSize.screenWidth / 10),
              Column(
                children: const [
                  Responsive(
                    desktop: TestamonialClient(
                      content:
                          "\"CSD brought me what I think is the foundation of a job stimulating and user-friendly: strong integration within a team dynamic and challenging in all aspects of my job... \nThis allows me to exploit all my talent and progress quickly in my career\" \n ",
                      name: "\n Mulan Chi",
                      compagny: '\n Avocate'),
                    tablet: TestamonialClient(
                      content:
                          "\"CSD brought me what I think is the foundation of a job stimulating and user-friendly: strong integration within a team dynamic and challenging in all aspects of my job... \nThis allows me to exploit all my talent and progress quickly in my career\" \n ",
                      name: "\n Mulan Chi",
                      compagny: '\n Avocate',
                      textHeight: 1.5,
                        textSize: 18,
                        sizeName: 22,
                        heightName: 2),
                    mobile: TestamonialClient(
                      content:
                          "\"CSD brought me what I think is the foundation of a job stimulating and user-friendly: strong integration within a team dynamic and challenging in all aspects of my job... \nThis allows me to exploit all my talent and progress quickly in my career\" \n ",
                      name: "\n Mulan Chi",
                      compagny: '\n Avocate',
                      textHeight: 1,
                        textSize: 14,
                        sizeName: 20,
                        heightName: 1.5)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
