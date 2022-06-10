import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/models/center_title_section.dart';
import 'package:core_website/models/form_send.dart';
import 'package:core_website/screens/welcome.dart';
import 'package:core_website/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(48.866667, 2.333333);
  final LatLng _office = const LatLng(49.0323168, 2.4733628);
  
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
      infoWindow: const InfoWindow(
        title: 'Core Soft Development', 
        snippet: 'Goussainville'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen)
      ));
    allMarkers.add(Marker(
      markerId: const MarkerId('secondMarker'),
      draggable: false,
      position: _center,
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
        child: Column(
          children: [
          Stack(alignment: Alignment.topCenter, children: [
            const CenterTitleSection(
              title: "CONTACT \n", 
              description: 'Contact Us'),
            SizedBox(
              height: screenSize.height / 6,
              width: screenSize.width,
            )
          ]),
          Row(
            children: [
              Expanded(
                  child: Row(
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
                            children: [
                              const Text(
                                'Get in Touch with us',
                                style: TextStyle(
                                    fontFamily: "Monserrat",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 28,
                                    wordSpacing: 1,
                                    letterSpacing: 1),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              FormSend(),
                              const SizedBox(
                                height: 20,
                              ),
                              buttonSend(context, "Send", () => const Home())
                            ]),
                      )
                    ],
                  )),
            ],
          ),
        ]));
  }
}