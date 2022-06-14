import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/screens/about_us.dart';
import 'package:core_website/screens/client.dart';
import 'package:core_website/screens/contact.dart';
import 'package:core_website/screens/welcome.dart';
import 'package:core_website/screens/portfolio.dart';
import 'package:core_website/screens/service.dart';
import 'package:core_website/utils/ui/responsive_layout.dart';
import 'package:core_website/screens/copyright.dart';
import 'package:core_website/screens/footer.dart';
import 'package:core_website/screens/menu_drawer.dart';
import 'package:core_website/screens/navbar.dart';
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

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.1
        ? _scrollPosition / (screenSize.height * 0.1)
        : 0.2;

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: ResponsiveLayout.isSmallScreen(context) || ResponsiveLayout.isMediumScreen(context)
          ? AppBar(
              iconTheme: const IconThemeData(color: Color(0xFFFF8A65)),
              backgroundColor: ColorsTheme.appColor,
              elevation: 0,
              centerTitle: true,
              title: Image.asset('logos/csd_core_soft_development.png',
              color: ColorsTheme.textMenuDrawer,
              height: 50,),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: const Navbar(),
            ),
      drawer: const MenuDrawer(),
      extendBody: true,
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const ClampingScrollPhysics(),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: double.infinity,
            maxHeight: double.infinity,
          ),
          child: IntrinsicHeight(
            child: Column(children: const [
              Home(),
              Services(),
              AboutUs(),
              Client(),
              Portfolio(),
              Contact(),
              Footer(),
              Copyright(),
            ]),
          ),
        ));
  }
}

/* drawer: const MenuDrawer(),
      extendBody: true,
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, bool innerBoxIsScrolled) {
          return [ ResponsiveLayout.isSmallScreen(context) || ResponsiveLayout.isMediumScreen(context)
            ? SliverAppBar(
              iconTheme: const IconThemeData(color: Color(0xFFFF8A65)),
              backgroundColor: ColorsTheme.appColor,
              elevation: 0,
              centerTitle: true,
              title: Image.asset('logos/csd_core_soft_development.png',
              color: ColorsTheme.textMenuDrawer,
              height: 50,),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: const Navbar(),
            ),
          ];
        },
        body: ),
      ); */