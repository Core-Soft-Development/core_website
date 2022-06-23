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
  final LatLng _other = const LatLng(48.980312, 2.423662);
  
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
      icon: BitmapDescriptor.defaultMarkerWithHue(208)
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
        color: ColorsTheme.backgroundFirst,
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 150, ),
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
                        width: screenSize.width / 2.70,
                        height: screenSize.height / 2,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                          child: GoogleMap(
                              padding: const EdgeInsets.all(2),
                              onMapCreated: _onMapCreated,
                              initialCameraPosition: CameraPosition(
                                target: _other,
                                zoom: 10.5),
                              markers: Set.from(allMarkers),
                              ),
                        ),
                      ),
                      const SizedBox(width: 40),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                ' Get in Touch with us',
                                style: TextStyle(
                                    fontFamily: "Monserrat",
                                    fontWeight: FontWeight.w600,
                                    color: ColorsTheme.titleForm,
                                    fontSize: 28,
                                    wordSpacing: 1,
                                    letterSpacing: 1, 
                                    height: 1),
                              ),
                              FormSend(),
                              Container(
                                padding: const EdgeInsets.only(top: 45, left: 7),
                                child: buttonSend(context, "Send", () => const Welcome()))
                            ]),
                      )
                    ],
                  )),
            ],
          ),
        ]));
  }
}