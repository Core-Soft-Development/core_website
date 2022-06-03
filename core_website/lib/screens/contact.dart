import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/screens/home_page.dart';
import 'package:core_website/utils/key_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(48.936181, 2.357443);
  final LatLng _office = const LatLng(49.0323168, 2.4733628);
  final LatLng _capital = const LatLng(48.866667, 2.333333);
  
  List<Marker> allMarkers = [];

  void _onMapCreated(controller) {
    setState(() {
       mapController = controller;
    });
  }

  @override
  void initState() {
    super.initState();
    allMarkers.add(Marker(
      markerId: const MarkerId('firstMarker'),
      draggable: false,
      position: _office,
      infoWindow: const InfoWindow(title: 'Core Soft Development', snippet: 'Goussainville'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue)
      ));
    allMarkers.add(Marker(
      markerId: const MarkerId('secondMarker'),
      draggable: false,
      position: _capital,
      ));
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
        /**
       * Title
       */
        color: ColorsTheme.backgroundSecond,
        padding: const EdgeInsets.all(50),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Stack(alignment: Alignment.topCenter, children: [
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: "CONTACT \n",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Montserrat-Regular",
                    color: ColorsTheme.primaryColor,
                    wordSpacing: 1,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                        text: 'Contact Us',
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
              width: screenSize.width,
            )
          ]),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Container(
                    key: KeyWidgets.keyContact,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      constraints: BoxConstraints(maxWidth: screenSize.width),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: screenSize.width / 3.5,
                            height: screenSize.height / 2,
                            child: GoogleMap(
                                padding: const EdgeInsets.all(2),
                                onMapCreated: _onMapCreated,
                                initialCameraPosition: CameraPosition(
                                  target: _center,
                                  zoom: 10),
                                markers: Set.from(allMarkers),
                                ),
                          ),
                          const SizedBox(width: 30),
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    'Get in Touch with us',
                                    style: TextStyle(
                                        fontFamily: "Monserrat-Regular",
                                        fontWeight: FontWeight.normal,
                                        fontSize: 28,
                                        wordSpacing: 1,
                                        letterSpacing: 1),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const TextField(
                                    maxLength: 80,
                                    style: TextStyle(
                                        fontFamily: "Monserrat-Regular",
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                        wordSpacing: 1,
                                        letterSpacing: 1),
                                    decoration: InputDecoration(
                                      labelText: 'Full name',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  const TextField(
                                    maxLength: 80,
                                    style: TextStyle(
                                        fontFamily: "Monserrat-Regular",
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                        wordSpacing: 1,
                                        letterSpacing: 1),
                                    decoration: InputDecoration(
                                        labelText: 'Email Address',
                                        border: OutlineInputBorder()),
                                  ),
                                  const TextField(
                                    maxLines: null,
                                    style: TextStyle(
                                        fontFamily: "Monserrat-Regular",
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                        wordSpacing: 1,
                                        letterSpacing: 1),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 50),
                                      border: OutlineInputBorder(),
                                      labelText: 'Your message',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                      width: 120,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: ColorsTheme.primaryColor,
                                            elevation: 10),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomePage()));
                                        },
                                        child: const Text(
                                          "Send",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ))
                                ]),
                          )
                        ],
                      ))),
            ],
          ),
          const SizedBox(height: 50),
        ]));
  }
}
