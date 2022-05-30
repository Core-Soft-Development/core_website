import 'package:core_website/config/measurable_widget.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/screens/about_us.dart';
import 'package:core_website/screens/blog.dart';
import 'package:core_website/screens/client.dart';
import 'package:core_website/screens/contact.dart';
import 'package:core_website/screens/home.dart';
import 'package:core_website/screens/portfolio.dart';
import 'package:core_website/screens/service.dart';
import 'package:core_website/utils/ui/responsive_layout.dart';
import 'package:core_website/components/copyright.dart';
import 'package:core_website/components/footer.dart';
import 'package:core_website/components/menu_drawer.dart';
import 'package:core_website/components/top_bar_contents.dart';
import 'package:flutter/material.dart';
import 'package:measured_size/measured_size.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  Size? sizeBox;
  late Widget child;
  /* Size _widgetSize = Size.zero;

  void _handleWidgetSized(Size value) => setState(() => _widgetSize = value);
   */
  void scrollIndex(int index) {
    _scrollController.animateTo(/* index * 1500 || MeasurableWidget as double */MeasuredSize(onChange: (Size size) {
                  setState(() {
                    sizeBox = size;
                  });
                }, child: child) as double , duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }
  
  
/// Page scren principal of siteweb

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
              child:  TopBarContents(scrollIndex),
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
              MeasuredSize(
                onChange: (Size size) {
                  setState(() {
                    sizeBox = size;
                  });
                },
                child: Home()),
               MeasuredSize(
                onChange: (Size size) {
                  setState(() {
                    sizeBox = size;
                  });
                },
                child: Services()),
               MeasuredSize(
                onChange: (Size size) {
                  setState(() {
                    sizeBox = size;
                  });
                },
                child: AboutUs()),
               MeasuredSize(
                onChange: (Size size) {
                  setState(() {
                    sizeBox = size;
                  });
                },
                child: Client()),
               MeasuredSize(
                onChange: (Size size) {
                  setState(() {
                    sizeBox = size;
                  });
                },
                child: Portfolio()),
               MeasuredSize(
                onChange: (Size size) {
                  setState(() {
                    sizeBox = size;
                  });
                },
                child: Blog()),
               MeasuredSize(
                onChange: (Size size) {
                  setState(() {
                    sizeBox = size;
                  });
                },
                child: Contact()),
              Footer(),
              Copyright(),
            ]),
          ),
        ),
      ),
    );
  }
}
