import 'package:core_website/components/box_widgets.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/screens/about_us.dart';
import 'package:core_website/screens/blog.dart';
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

  Size? sizeBox;
  Offset? position;
  double? height;

  void scrollIndex(int index) {
    _scrollController.animateTo(calculateSizeAndPosition as double,
        duration: const Duration(milliseconds: 200), curve: Curves.bounceIn);
  }

  @override
  void initState() {
    _scrollController;
    calculateSizeAndPosition();
    super.initState();
  }

  /// Page screen principal of siteweb

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

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
        ),
      ),
    );
  }

  void calculateSizeAndPosition() async {
    //double height = 0;

    /* WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox boxHome = KeyWidgets.keyHome.currentContext!.findRenderObject() as RenderBox;
      setState(() {
        position = boxHome.localToGlobal(Offset.zero);
        sizeBox = boxHome.size;
        height = sizeBox?.height ?? 0;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox boxService = KeyWidgets.keyService.currentContext!.findRenderObject() as RenderBox;
      setState(() {
        position = boxService.localToGlobal(Offset.zero);
        sizeBox = boxService.size;
        height = sizeBox?.height ?? 0;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox boxAbout = KeyWidgets.keyAbout.currentContext!.findRenderObject() as RenderBox;
      setState(() {
        position = boxAbout.localToGlobal(Offset.zero);
        sizeBox = boxAbout.size;
        height = sizeBox?.height ?? 0;
      });
    }); */

    WidgetsBinding.instance.addPostFrameCallback((index) {
      setState(() {
        position = BoxWidgets.boxClient.localToGlobal(Offset.zero);
        sizeBox = BoxWidgets.boxClient.size;
        height = sizeBox?.height ?? 0;
      });
    });

    /* WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox boxPortfolio = KeyWidgets.keyPortfolio.currentContext!.findRenderObject() as RenderBox;
      setState(() {
        position = boxPortfolio.localToGlobal(Offset.zero);
        sizeBox = boxPortfolio.size;
        height = sizeBox?.height ?? 0;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox boxBlog = KeyWidgets.keyBlog.currentContext!.findRenderObject() as RenderBox;
      setState(() {
        position = boxBlog.localToGlobal(Offset.zero);
        sizeBox = boxBlog.size;
        height = sizeBox?.height ?? 0;
      });
    }); */

    WidgetsBinding.instance.addPostFrameCallback((index) {
      setState(() {
        position = BoxWidgets.boxContact.localToGlobal(Offset.zero);
        sizeBox = BoxWidgets.boxContact.size;
        height = sizeBox?.height ?? 0;
      });
    });
  }

  //return height;
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