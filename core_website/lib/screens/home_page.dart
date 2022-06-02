import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/screens/about_us.dart';
import 'package:core_website/screens/blog.dart';
import 'package:core_website/screens/client.dart';
import 'package:core_website/screens/contact.dart';
import 'package:core_website/screens/home.dart';
import 'package:core_website/screens/portfolio.dart';
import 'package:core_website/screens/service.dart';
import 'package:core_website/utils/key_widgets.dart';
import 'package:core_website/utils/ui/responsive_layout.dart';
import 'package:core_website/components/copyright.dart';
import 'package:core_website/components/footer.dart';
import 'package:core_website/components/menu_drawer.dart';
import 'package:core_website/components/top_bar_contents.dart';
import 'package:flutter/material.dart';
import 'package:measure_size/measure_size.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ScrollController _scrollController = ScrollController();

  late Widget child;

  Size? sizeBox;
  Offset? position;

  /* final List _positions = [
    const Home(),
    const Services(),
    const AboutUs(),
    const Portfolio(),
    const Client(),
    const Blog(),
    const Contact()
  ]; */

  /* Size _widgetSize = Size.zero;
  void _handleWidgetSized(Size value) => setState(() => _widgetSize = value);
   */

  /*
  _afterLayout(_) {
    _positions();
  }  */

   void scrollIndex(int index) {
    _scrollController.animateTo(
        calculateSizeAndPosition(index),
        duration: const Duration(milliseconds: 200),
        curve: Curves.bounceIn);
  } 

  @override
  void initState() {
    super.initState();
    //calculateSizeAndPosition(Container);
  }

   /* Future<void> scrollIndex(int index,
    {offset = 900, duration = const Duration(milliseconds: 100), curve = Curves.easeIn}) async {
      assert(_positions.isNotEmpty, await Future.wait<void>(<Future<void>>[
        for ( int i = 0; i < _positions.length; i += 1) _positions[i].animateTo(900, duration: const Duration(milliseconds: 100), curve: Curves.easeIn),
      ]));
    } */

  /// Page screen principal of siteweb

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    //if (sizeBox == null || position == null) return Container();

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
              child: TopBarContents(scrollIndex),
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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                  key: KeyWidgets.keyHome,
                  child: const Home()),
                  Container(
                  key: KeyWidgets.keyService,
                  child: const Services()),
                  Container(
                  key: KeyWidgets.keyAbout,
                  child: const AboutUs()),
                  Container(
                  key: KeyWidgets.keyClient,
                  child: const Client()),
                  Container(
                  key: KeyWidgets.keyPortfolio,
                  child: const Portfolio()),
                  Container(
                  key: KeyWidgets.keyBlog,
                  child: const Blog()),
                  Container(
                  key: KeyWidgets.keyContact,
                  child: const Contact()),
                  const Footer(),
                  const Copyright(),
                ]),
          ),
        ),
      ),
    );
  }

  calculateSizeAndPosition(index) { 
    WidgetsBinding.instance.addPostFrameCallback((_) { final RenderBox boxHome = KeyWidgets.keyHome.currentState!.widget as RenderBox;
    setState(() {
      position = boxHome.localToGlobal(Offset.zero);
      sizeBox = boxHome.size;
    });
   });
   
    WidgetsBinding.instance.addPostFrameCallback((_) { final RenderBox boxService = KeyWidgets.keyService.currentContext!.findRenderObject() as RenderBox;
    setState(() {
      position = boxService.localToGlobal(Offset.zero);
      sizeBox = boxService.size;
    });
   });

    WidgetsBinding.instance.addPostFrameCallback((_) { final RenderBox boxAbout = KeyWidgets.keyAbout.currentContext!.findRenderObject() as RenderBox;
    setState(() {
      position = boxAbout.localToGlobal(Offset.zero);
      sizeBox = boxAbout.size;
    });
   });

    WidgetsBinding.instance.addPostFrameCallback((_) { final RenderBox boxClient = KeyWidgets.keyClient.currentContext!.findRenderObject() as RenderBox;
    setState(() {
      position = boxClient.localToGlobal(Offset.zero);
      sizeBox = boxClient.size;
    });
   });

   WidgetsBinding.instance.addPostFrameCallback((_) { final RenderBox boxPortfolio = KeyWidgets.keyPortfolio.currentContext!.findRenderObject() as RenderBox;
    setState(() {
      position = boxPortfolio.localToGlobal(Offset.zero);
      sizeBox = boxPortfolio.size;
    });
   });

   WidgetsBinding.instance.addPostFrameCallback((_) { final RenderBox boxBlog = KeyWidgets.keyBlog.currentContext!.findRenderObject() as RenderBox;
    setState(() {
      position = boxBlog.localToGlobal(Offset.zero);
      sizeBox = boxBlog.size;
    });
   });

   WidgetsBinding.instance.addPostFrameCallback((_) { final RenderBox boxContact = KeyWidgets.keyContact.currentContext!.findRenderObject() as RenderBox;
    setState(() {
      position = boxContact.localToGlobal(Offset.zero);
      sizeBox = boxContact.size;
    });
   });
  }

}
