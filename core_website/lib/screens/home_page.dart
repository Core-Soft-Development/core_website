import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/screens/about_us.dart';
import 'package:core_website/screens/client.dart';
import 'package:core_website/screens/contact.dart';
import 'package:core_website/screens/home.dart';
import 'package:core_website/screens/portfolio.dart';
import 'package:core_website/screens/service.dart';
import 'package:core_website/utils/ui/responsive_layout.dart';
import 'package:core_website/widgets/copyright.dart';
import 'package:core_website/widgets/footer.dart';
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
  //double _scrollPosition = 0;
  //double _opacity = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: ResponsiveLayout.isSmallScreen(context)
          ? AppBar(
              iconTheme: const IconThemeData(color: Color(0xFFFF8A65)),
              backgroundColor: ColorsTheme.appColor,
              elevation: 0,
              centerTitle: true,
              title: Image.asset('logos/csd.png'),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: const TopBarContents(),
            ),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const ClampingScrollPhysics(),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: double.infinity,
          ),
          child: IntrinsicHeight(
            child: Column(children: [
              Container(
                alignment: Alignment.center,
                child: const Home(),
              ),
              Container(
                alignment: Alignment.center,
                child: const Services(),
              ),
              Container(
                alignment: Alignment.center,
                child: const AboutUs(),
              ),
              Container(
                alignment: Alignment.center,
                child: const Client(),
              ),
              Container(
                alignment: Alignment.center,
                child: const Portfolio(),
              ),
              Container(
                alignment: Alignment.center,
                child: const Contact(),
              ),
              Container(
                alignment: Alignment.center,
                child: const Footer(),
              ),
              Container(
                alignment: Alignment.center,
                child: const Copyright(),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
