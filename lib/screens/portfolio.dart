import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/padding.dart';
import 'package:core_website/config/spacer.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/models/center_title_section.dart';
import 'package:core_website/utils/ui/responsive.dart';
import 'package:core_website/widgets/image_project.dart';
import 'package:core_website/models/project.dart';
import 'package:core_website/utils/key_widgets.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    int flexImage =
        Responsive.isDesktop(context) || Responsive.isTablet(context) ? 1 : 2;
    int flexText =
        Responsive.isDesktop(context) || Responsive.isTablet(context) ? 1 : 4;

    /**
       * Title
       */
    return Container(
        key: KeyWidgets.keyPortfolio,
        color: ColorsTheme.backgroundFirst,
        padding: paddingGlobal(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(alignment: Alignment.topCenter, children: [
            const Responsive(
                desktop: CenterTitleSection(
                    title: "PORTFOLIO \n", description: 'Our Clients Projects'),
                tablet: CenterTitleSection(
                  title: "PORTFOLIO \n",
                  description: 'Our Clients Projects',
                  sizeTitle: 16,
                  sizeText: 30,
                ),
                mobile: CenterTitleSection(
                  title: "PORTFOLIO \n",
                  description: 'Our Clients Projects',
                  sizeTitle: 14,
                  height: 1.5,
                  sizeText: 20,
                )),
            SizedBox(
              height: Responsive.isDesktop(context)
                  ? FrameSize.screenHeight / 4
                  : FrameSize.screenHeight / 8,
              width: FrameSize.screenWidth, // centre title
            )
          ]),
          Row(
            children: [
              Expanded(
                  flex: flexImage,
                  child: const ImageProject(
                      image: 'assets/images/project/project1.png')),
              Expanded(
                  flex: flexText,
                  child: const Responsive(
                      desktop: Project(
                        title: "Project name \n",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                      ),
                      tablet: Project(
                        title: "Project name \n",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                        size: 30,
                        height: 1,
                      ),
                      mobile: Project(
                        title: "Project name \n",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                        size: 20,
                        height: 1,
                        textSize: 14,
                      )))
            ],
          ),
          const SpacerPortfolio(),
          Row(
            children: [
              Expanded(
                  flex: flexText,
                  child: const Responsive(
                      desktop: Project(
                        title: "Project name \n",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                      ),
                      tablet: Project(
                        title: "Project name \n",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                        size: 30,
                        height: 1,
                      ),
                      mobile: Project(
                        title: "Project name \n",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                        size: 20,
                        height: 1,
                        textSize: 14,
                      ))),
              Expanded(
                  flex: flexImage,
                  child: const ImageProject(
                      image: 'assets/images/project/project2.png'))
            ],
          ),
          const SpacerPortfolio(),
          Row(
            children: [
              Expanded(
                  flex: flexImage,
                  child: const ImageProject(
                      image: 'assets/images/project/project3.png')),
              Expanded(
                  flex: flexText,
                  child: const Responsive(
                      desktop: Project(
                        title: "Project name \n",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                      ),
                      tablet: Project(
                        title: "Project name \n",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                        size: 30,
                        height: 1,
                      ),
                      mobile: Project(
                        title: "Project name \n",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                        size: 20,
                        height: 1,
                        textSize: 14,
                      )))
            ],
          ),
          const SpacerPortfolio(),
          Row(
            children: [
              Expanded(
                  flex: flexText,
                  child: const Responsive(
                      desktop: Project(
                        title: "Project name \n",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                      ),
                      tablet: Project(
                        title: "Project name \n",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                        size: 30,
                        height: 1,
                      ),
                      mobile: Project(
                        title: "Project name \n",
                        description:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                        size: 20,
                        height: 1,
                        textSize: 14,
                      ))),
              Expanded(
                  flex: flexImage,
                  child: const ImageProject(
                      image: 'assets/images/project/project4.png'))
            ],
          ),
        ]));
  }
}
