import 'package:core_website/utils/ui/responsive_layout.dart';
import 'package:core_website/widgets/menu_drawer.dart';
import 'package:core_website/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(150, 255, 137, 101),
        Color.fromARGB(50, 255, 111, 67),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: ResponsiveLayout.isSmallScreen(context)
            ? AppBar(
                iconTheme: const IconThemeData(color: Color(0xFFFF8A65)),
                backgroundColor: const Color(0xFFFFAB91),
                elevation: 0,
                centerTitle: true,
                title: Image.asset('assets/images/logos/csd.png'),
              )
            : PreferredSize(
                preferredSize: Size(screenSize.width, 70),
                child: const TopBarContents(),
              ),
              drawer: const MenuDrawer(),
        body: SingleChildScrollView(
          controller: _scrollController,
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              //Navbar(), const Body()
              Stack(
                children: [
                  Container(
                    child: SizedBox(
                        height: screenSize.height * .9,
                        width: screenSize.width,
                        child: Image.asset('assets/images/background.png')),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
