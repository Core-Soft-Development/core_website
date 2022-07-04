import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/models/menu_drawer.dart';
import 'package:core_website/screens/about_us.dart';
import 'package:core_website/screens/client.dart';
import 'package:core_website/screens/contact.dart';
import 'package:core_website/screens/copyright.dart';
import 'package:core_website/screens/footer.dart';
import 'package:core_website/screens/navbar.dart';
import 'package:core_website/screens/portfolio.dart';
import 'package:core_website/screens/services.dart';
import 'package:core_website/screens/welcome.dart';
import 'package:core_website/utils/ui/responsive.dart';

void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final AutoScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = AutoScrollController(
      //add this for advanced viewport boundary. e.g. SafeArea
      viewportBoundaryGetter: () => Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),

      //choose vertical/horizontal
      axis: Axis.vertical,

      //this given value will bring the scroll offset to the nearest position in fixed row height case.
      //for variable row height case, you can still set the average height, it will try to get to the relatively closer offset
      //and then start searching.
      suggestedRowHeight: 400
    );
  }

  @override
  Widget build(BuildContext context) {
    FrameSize.init(context: context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      drawer: MenuDrawer(calculateSizeAndPosition),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              Responsive.isMobile(context)
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
                      preferredSize: Size(FrameSize.screenWidth, 70),
                      child: Navbar(calculateSizeAndPosition),
                    ),
            ];
          },
        body: ListView(
          scrollDirection: Axis.vertical,
          controller: _scrollController,
          children: [
            getChildWithAutoScrollTag(
              Responsive(
              desktop: Welcome(height: FrameSize.screenHeight / 2),
              tablet: Welcome(height: FrameSize.screenHeight / 4, heightText: 4, size: 30,),
              mobile: Welcome(height: FrameSize.screenHeight / 6, heightText: 3, size: 25, heightText2: 2,),
              )
            , _scrollController, 0),
            getChildWithAutoScrollTag(const Services(), _scrollController, 1),
            getChildWithAutoScrollTag(const AboutUs(), _scrollController, 2),
            getChildWithAutoScrollTag(const Client(), _scrollController, 3),
            getChildWithAutoScrollTag(const Portfolio(), _scrollController, 4),
            getChildWithAutoScrollTag(const Contact(), _scrollController, 5),
            getChildWithAutoScrollTag(const Responsive(
              desktop: Footer(),
              tablet: Footer(horizontal: 100,),
              mobile: Footer(horizontal: 40,),
            ), _scrollController, 6),
            getChildWithAutoScrollTag(const Copyright(), _scrollController, 7),
          ],
        ),
        ),
      ),
    );
  }

  Widget getChildWithAutoScrollTag(Widget child, AutoScrollController controller, int index) {
    return AutoScrollTag(
      key: ValueKey(index.toString()),
      controller: controller,
      index: index,
      child: child,
    );
  }

  void calculateSizeAndPosition(int index) {
    _scrollController.scrollToIndex(index, preferPosition: AutoScrollPosition.begin,);
  }
}
