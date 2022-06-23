import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/screens/about_us.dart';
import 'package:core_website/screens/client.dart';
import 'package:core_website/screens/contact.dart';
import 'package:core_website/screens/welcome.dart';
import 'package:core_website/screens/portfolio.dart';
import 'package:core_website/screens/service.dart';
import 'package:core_website/utils/ui/responsive.dart';
import 'package:core_website/screens/copyright.dart';
import 'package:core_website/screens/footer.dart';
import 'package:core_website/screens/menu_drawer.dart';
import 'package:core_website/screens/navbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const HomePage());

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
  void initState() {
    _scrollController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      drawer: const MenuDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            Responsive.isMobile(context) || Responsive.isTablet(context)
                ? SliverAppBar(
                    iconTheme: const IconThemeData(color: ColorsTheme.hoverColor),
                    backgroundColor: const Color(0XFFF06C4F),
                    elevation: 10,
                    centerTitle: true,
                    title: Image.asset(
                      'assets/logos/csd_core_soft_development.png',
                      color: ColorsTheme.backgroundFirst,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    floating: true,
                    snap: true,
                    expandedHeight: 50,
                  )
                : PreferredSize(
                    preferredSize: Size(screenSize.width, 70),
                    child: const Navbar(),
                  ),
          ];
        },
        body: SingleChildScrollView(
          //controller: _scrollController,
          physics: const ClampingScrollPhysics(),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: double.infinity,
              maxHeight: double.infinity,
            ),
            child: IntrinsicHeight(
              child: Column(children: const [
                Welcome(),
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
      ),
    );
  }
}
