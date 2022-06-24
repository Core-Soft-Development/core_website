import 'package:core_website/config/frame_size.dart';
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
    return Container(
        /**
       * Title
       */
        color: ColorsTheme.backgroundFirst,
        padding: const EdgeInsets.all(40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(alignment: Alignment.topCenter, children: [
            const CenterTitleSection(
                title: "PORTFOLIO \n", description: 'Our Clients Projects'),
            SizedBox(
              height: FrameSize.screenHeight / 4,
              width: FrameSize.screenWidth,
            )
          ]),
          Row(
            children: const [
              Expanded(
                child:
                    ImageProject(image: 'assets/images/project/project1.png'),
              ),
              Expanded(
                child: Project(
                  title: "Project name \n",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                ),
              )
            ],
          ),
          const SpacerPortfolio(),
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
          const SpacerPortfolio(),
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
          const SpacerPortfolio(),
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

class SpacerPortfolio extends StatelessWidget {
  const SpacerPortfolio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: FrameSize.screenHeight * 0.05);
  }
}
