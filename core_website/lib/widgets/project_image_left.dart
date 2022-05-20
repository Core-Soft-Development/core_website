import 'package:core_website/widgets/project.dart';
import 'package:flutter/material.dart';

class ProjectImageLeft extends StatelessWidget {
  const ProjectImageLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
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
          image: AssetImage('assets/images/project/project1.png'),
          alignment: Alignment.centerRight)),
    ),
    const SizedBox(width: 30),
    const Expanded(child:
    Project(
      title: "Project name \n",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet. Eros porta et consectetur auctor gravida mauris tempus pellentesque. Nulla ornare potenti in eu in commodo magna amet.\n",
      subtext: "Check Case Study",
    )
    )],
    ));
  }
}