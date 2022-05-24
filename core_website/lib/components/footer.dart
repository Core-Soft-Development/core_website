import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      //width: double.maxFinite,
      height: screenSize.height / 3,
      color: Colors.black,
      child: Padding(
          padding: const EdgeInsets.all(40),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: screenSize.width / 6,
                  height: screenSize.height / 4,
                  margin: const EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            height: screenSize.height / 15,
                            child: Image.asset(
                              'logos/core_soft_development.png',
                              color: Colors.white,
                            )),
                        const Text(
                          'Lorem ipsum dolor sit amet, consy ect etur adipisc de elit. Quisque act raqum nunc no dolor sit de amet.',
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Monserrat-Regular',
                              fontSize: 12),
                        )
                      ]),
                ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //textDirection: TextDirection.ltr,
                    children: const [
                      Text('Our service',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Monserrat-Regular',
                              fontSize: 22)),
                      TextButton(
                          onPressed: null,
                          child: Text('How it works',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Monserrat-Regular',
                                  fontSize: 18))),
                      TextButton(
                          onPressed: null,
                          child: Text('Plan & pricing',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Monserrat-Regular',
                                  fontSize: 18))),
                      TextButton(
                          onPressed: null,
                          child: Text('Our works',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Monserrat-Regular',
                                  fontSize: 18))),
                    ],
                  ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //textDirection: TextDirection.ltr,
                    children: const [
                      Text('Company',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Monserrat-Regular',
                              fontSize: 22)),
                      TextButton(
                          onPressed: null,
                          child: Text('Blog',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Monserrat-Regular',
                                  fontSize: 18))),
                      TextButton(
                          onPressed: null,
                          child: Text('Contact us',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Monserrat-Regular',
                                  fontSize: 18))),
                      TextButton(
                          onPressed: null,
                          child: Text('Book a call',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Monserrat-Regular',
                                  fontSize: 18))),
                    ],
                  ),
                Container(
                  width: screenSize.width / 6,
                  height: screenSize.height / 4,
                  margin: const EdgeInsets.only(right: 10),
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //textDirection: TextDirection.ltr,
                    children: [
                      const Text('Support',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Monserrat-Regular',
                              fontSize: 22)),
                      const Text(
                          'Quisque actraqum nunc no dolor sit ametaugue dolor. Lorem ipsum dolor sit amet, consyect etur.',
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Monserrat-Regular',
                              fontSize: 16)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.facebook,
                                color: Colors.white,
                              )),
                          SizedBox(
                            width: 15,
                          ),
                          IconButton(
                              onPressed: null,
                              icon: FaIcon(
                                FontAwesomeIcons.twitter,
                                color: Colors.white,
                              )),
                          SizedBox(
                            width: 15,
                          ),
                          IconButton(
                              onPressed: null,
                              icon: FaIcon(
                                FontAwesomeIcons.instagram,
                                color: Colors.white,
                              )),
                          SizedBox(
                            width: 15,
                          ),
                          IconButton(
                              onPressed: null,
                              icon: FaIcon(
                                FontAwesomeIcons.linkedinIn,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                //copyright()
              ])),
    );
  }
}
