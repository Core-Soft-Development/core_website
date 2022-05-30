import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  final void Function(int) scrollback;

  const TopBarContents(this.scrollback, {Key? key}) : super(key: key);

  @override
  State<TopBarContents> createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {

  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Home",
    "Service",
    "About Us",
    "Client",
    "Portfolio",
    "Blog",
    "Contact Us"
  ]; 

  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;

/**
 * implementation of the menu bar
 */
    return Container(
        padding: const EdgeInsets.all(20),
        constraints: const BoxConstraints(maxWidth: 1110),
        height: 100,
        color: Colors.deepOrangeAccent.withOpacity(0.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                child: Image.asset('logos/core_soft_development.png')),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  menuItems.length, (index) => buildMenuItem(index)),
            ),
          ],
        ));
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          widget.scrollback(index);
          setState(() {
            selectedIndex = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          alignment: Alignment.center,
            constraints: const BoxConstraints(maxWidth: 122),
            height: 100,
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                Text(
                  menuItems[index],
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontFamily: "Montserrat",
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                // Hover
                AnimatedPositioned(
                    duration: const Duration(milliseconds: 200),
                    left: 0,
                    right: 0,
                    bottom: selectedIndex != index && hoverIndex == index
                        ? -30
                        : -35,
                    child: Image.asset(
                      "assets/images/Hover.png",
                      color: Colors.red[100],
                    )),
                // Select Menu
                AnimatedPositioned(
                    duration: const Duration(milliseconds: 200),
                    left: 0,
                    right: 0,
                    bottom: selectedIndex == index ? -20 : -35,
                    child: Image.asset(
                      "assets/images/Hover.png",
                      color: Colors.red[100],
                    ))
              ],
            )
            ),
      ); 

}

 

/**
 * Menu initial
 */
/* 
final List _isHovering = [false, false, false, false, false, false, false];

[
                  SizedBox(
                      width: screenSize.width / 4,
                      child: Image.asset(
                          'logos/core_soft_development.png')),
                  SizedBox(width: screenSize.width / 4),
                   InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[0] = true : _isHovering[0] = false;
                      });
                    },
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home()));},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Home',
                          style: TextStyle(
                              color: _isHovering[0] ? Colors.grey : Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[0],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.orangeAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 45),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    onTap: () {
                      const Services();
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Services',
                          style: TextStyle(
                              color: _isHovering[1] ? Colors.grey : Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[1],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.orangeAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 45),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[2] = true : _isHovering[2] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'About Us',
                          style: TextStyle(
                              color: _isHovering[2] ? Colors.grey : Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[2],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.orangeAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 45),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[3] = true : _isHovering[3] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Portfolio',
                          style: TextStyle(
                              color: _isHovering[3] ? Colors.grey : Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[3],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.orangeAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 45),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[4] = true : _isHovering[4] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Client',
                          style: TextStyle(
                              color: _isHovering[4] ? Colors.grey : Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[4],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.orangeAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 45),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[5] = true : _isHovering[5] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Blog',
                          style: TextStyle(
                              color: _isHovering[5] ? Colors.grey : Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[5],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.orangeAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenSize.width / 45),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[6] = true : _isHovering[6] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color.fromARGB(150, 255, 137, 101),
                              Color.fromARGB(50, 255, 111, 67),
                            ]),
                            border:
                                Border.all(color: Colors.transparent, width: 2.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Text(
                            'Contact Us',
                            style: TextStyle(
                              color: _isHovering[6] ? Colors.grey : Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[6],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.orangeAccent,
                          ),
                        )
                      ],
                    ),
                  ), 
                ], */


/**
 * Test for ancre
 */
/* int _pageView = 0;
  final List<Widget> _pagesOption = [
    const Home(),
    const Services(),
    const AboutUs(),
    const Portfolio(),
    const Client(),
    const Blog(),
    const Contact()
  ];

  void onTappedBar(int index) {
    setState(() {
      _pageView = index;
    });
  } */