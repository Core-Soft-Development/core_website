import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/models/center_title_section.dart';
import 'package:core_website/models/image_project.dart';
import 'package:core_website/models/project.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
        /**
       * Title
       */
        color: ColorsTheme.backgroundFirst,
        padding: const EdgeInsets.all(30),
        child: Column(
        children: [
          Stack(alignment: Alignment.topCenter, 
          children: [
            const Expanded(
              child: CenterTitleSection(
                title: "PORTFOLIO \n", 
                description: 'Our Clients Projects')),
            SizedBox(
              height: screenSize.height / 6,
              width: screenSize.width,
            )
          ]),
          Row(
            children: const [
              Expanded(
                child: ImageProject(
                  image: 'assets/images/project/project1.png')),
              Expanded(
                  child: Project(
                title: "Project name \n",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
              ))
            ],
          ),
          const SizedBox(height: 80,),
          Row(
            /* crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween, */
            children: const [
              Expanded(
                  child: Project(
                title: "Project name \n",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
              )),
              Expanded(
                child: ImageProject(
                  image: 'assets/images/project/project2.png'))
            ],
          ),
          const SizedBox(height: 80),
          Row(
            /* mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center, */
            children: const [
              Expanded(
                child: ImageProject(
                  image: 'assets/images/project/project3.png')),
              Expanded(
                  child: Project(
                title: "Project name \n",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
              ))
            ],
          ),
          const SizedBox(height: 80),
          Row(
            /* crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween, */
            children: const [
              Expanded(
                  child: Project(
                title: "Project name \n",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
              )),
              Expanded(
                child: ImageProject(
                  image: 'assets/images/project/project4.png'))
            ],
          ),
        ]));
  }
}