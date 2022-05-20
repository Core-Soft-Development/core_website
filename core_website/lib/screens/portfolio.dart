import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/widgets/project.dart';
import 'package:core_website/widgets/project_image_left.dart';
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
        padding: const EdgeInsets.all(50),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Stack(alignment: Alignment.topCenter, children: [
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: "PORTFOLIO \n",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Montserrat-Regular",
                    color: ColorsTheme.primaryColor,
                    wordSpacing: 1,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                        text: 'Our Clients Projects',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 40,
                            wordSpacing: 1,
                            height: 1.5))
                  ]),
            ),
            SizedBox(
              height: screenSize.height / 6,
              width: screenSize.width,
            )
          ]),
          //const SizedBox(width: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    constraints: BoxConstraints(maxWidth: screenSize.width),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 465,
                          height: screenSize.height / 3,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/project/project1.png'),
                                  alignment: Alignment.centerRight)),
                        ),
                        const SizedBox(width: 30),
                        const Expanded(
                            child: Project(
                          title: "Project name \n",
                          description:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                          subtext: "Check Case Study",
                        ))
                      ],
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                  child: Project(
                title: "Project name \n",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                subtext: "Check Case Study",
              )),
              const SizedBox(width: 30),
              Container(
                width: 465,
                height: screenSize.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/project/project2.png'),
                        alignment: Alignment.centerRight)),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 465,
                height: screenSize.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/project/project3.png'),
                        alignment: Alignment.centerRight)),
              ),
              const SizedBox(width: 30),
              const Expanded(
                  child: Project(
                title: "Project name \n",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                subtext: "Check Case Study",
              ))
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                  child: Project(
                title: "Project name \n",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
                subtext: "Check Case Study",
              )),
              const SizedBox(width: 30),
              Container(
                width: 465,
                height: screenSize.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/project/project4.png'),
                        alignment: Alignment.centerRight)),
              ),
            ],
          ),
        ]));
  }
}
