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

    /**
       * Title
       */
    return Container(
        key: KeyWidgets.keyPortfolio,
        color: ColorsTheme.backgroundFirst,
        padding: const EdgeInsets.all(40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(alignment: Alignment.topCenter, children: [
            const CenterTitleSection(
                title: "PORTFOLIO \n", description: 'Our Clients Projects'),
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
          SizedBox(height: screenSize.height * 0.05),
          Row(
            children: const [
              Expanded(
                  child: Project(
                title: "Project name \n",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
              )),
              Expanded(
                  child:
                      ImageProject(image: 'assets/images/project/project2.png'))
            ],
          ),
          SizedBox(height: screenSize.height * 0.05),
          Row(
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
          SizedBox(height: screenSize.height * 0.05),
          Row(
            children: const [
              Expanded(
                  child: Project(
                title: "Project name \n",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
              )),
              Expanded(
                  child:
                      ImageProject(image: 'assets/images/project/project4.png'))
            ],
          ),
        ]));
  }
}
