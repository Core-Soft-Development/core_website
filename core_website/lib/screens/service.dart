import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    /**
     * Title
     */
    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(alignment: Alignment.topCenter, children: [
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: "SERVICES \n",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Montserrat-Regular",
                    color: Color.fromRGBO(217, 39, 39, 1),
                    wordSpacing: 1,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                        text: 'A set of digital solution',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 40,
                            wordSpacing: 1,
                            height: 1.5))
                  ]),
            ),
            SizedBox(
                  height: screenSize.height / 6,
                  width: screenSize.width,)
          ]),
          /**
           * Container of services
           */
          Container(
              padding: const EdgeInsets.all(10),
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: screenSize.width * 0.42,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFEEEEEE), offset: Offset(1, -4))
                        ],
                        shape: BoxShape.rectangle),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      /**
                       * first block container
                       */
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icons/code.png'),
                                fit: BoxFit.fill),
                            shape: BoxShape.rectangle),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        height: 100,
                        width: 500,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                              text: 'Website Design \n',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      Color.fromRGBO(217, 39, 39, 1),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20,
                                  wordSpacing: 1,
                                  height: 1.5),
                              children: [
                                TextSpan(
                                    text:
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Monserrat',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ))
                              ]),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      width: screenSize.width * 0.42,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFEEEEEE), offset: Offset(1, -4))
                          ],
                          shape: BoxShape.rectangle),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          /**
                           * second block container
                           */
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/icons/phonelink.png'),
                                    fit: BoxFit.fill),
                                shape: BoxShape.rectangle),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 5),
                            alignment: Alignment.center,
                            height: 100,
                            width: 500,
                            child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                    text: 'Mobile App Design \n',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor:
                                            Color.fromRGBO(217, 39, 39, 1),
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20,
                                        wordSpacing: 1,
                                        height: 1.5),
                                    children: [
                                      TextSpan(
                                          text:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque',
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Monserrat',
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                          ))
                                    ])),
                          ),
                        ],
                      ))
                ],
              )),
          Container(
              padding: const EdgeInsets.all(10),
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      width: screenSize.width * 0.42,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFEEEEEE), offset: Offset(1, -4))
                          ],
                          shape: BoxShape.rectangle),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        /**
                         * third block container
                         */
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/icons/serveur.png'),
                                  fit: BoxFit.fill),
                              shape: BoxShape.rectangle),
                        ),
                        Container(
                            padding: const EdgeInsets.only(bottom: 5),
                            alignment: Alignment.center,
                            height: 100,
                            width: 500,
                            child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                    text: 'Website Development \n',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor:
                                            Color.fromRGBO(217, 39, 39, 1),
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20,
                                        wordSpacing: 1,
                                        height: 1.5),
                                    children: [
                                      TextSpan(
                                          text:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque',
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Monserrat',
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                          ))
                                    ]))),
                      ])),
                  Container(
                      padding: const EdgeInsets.all(10),
                      width: screenSize.width * 0.42,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFEEEEEE), offset: Offset(1, -4))
                          ],
                          shape: BoxShape.rectangle),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          /**
                           * fourth block container
                           */
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/icons/mode.png'),
                                    fit: BoxFit.fill),
                                shape: BoxShape.rectangle),
                          ),
                          Container(
                              padding: const EdgeInsets.only(bottom: 5),
                              alignment: Alignment.center,
                              height: 100,
                              width: 500,
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  text: const TextSpan(
                                      text: 'Mobile App Development \n',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationColor:
                                              Color.fromRGBO(217, 39, 39, 1),
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 20,
                                          wordSpacing: 1,
                                          height: 1.5),
                                      children: [
                                        TextSpan(
                                            text:
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eros porta et consectetur auctor gravida mauris tempus pellentesque',
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontFamily: 'Monserrat',
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ))
                                      ]))),
                        ],
                      ))
                ],
              ))
        ],
      ),
    ) ;
  }
}
