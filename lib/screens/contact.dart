import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/models/center_title_section.dart';
import 'package:core_website/models/form_send.dart';
import 'package:core_website/screens/welcome.dart';
import 'package:core_website/utils/ui/responsive.dart';
import 'package:core_website/widgets/button.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(48.936181, 2.357443);
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
            title: 'Core Soft Development', snippet: 'Goussainville'),
        icon: BitmapDescriptor.defaultMarkerWithHue(208)));
    allMarkers.add(Marker(
      markerId: const MarkerId('secondMarker'),
      draggable: false,
      position: _center,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        /**
       * Title
       */
        color: ColorsTheme.backgroundFirst,
        padding: EdgeInsets.symmetric(vertical: Responsive.isDesktop(context) ? 100 : 10, horizontal: Responsive.isDesktop(context) ? 150 : 50),
        child: Column(children: [
          Stack(alignment: Alignment.topCenter, children: [
            const Responsive(
                desktop: CenterTitleSection(
                    title: "CONTACT \n", description: 'Contact Us'),
                tablet: CenterTitleSection(
                  title: "CONTACT \n",
                  description: 'Contact Us',
                  sizeTitle: 16,
                  sizeText: 30,
                ),
                mobile: CenterTitleSection(
                  title: "CONTACT \n",
                  description: 'Contact Us',
                  sizeTitle: 14,
                  height: 1.5,
                  sizeText: 20,
                )),
            SizedBox(
              height: Responsive.isDesktop(context) ? FrameSize.screenHeight / 5 : FrameSize.screenHeight / 10,
            )
          ]),
          Row(
            children: [
              Flexible(
                child: Column(
                  children: [
                    SizedBox(
                      width: Responsive.isDesktop(context) ? FrameSize.screenWidth / 2.70 : FrameSize.screenWidth,
                      height: FrameSize.screenHeight / 2,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        child: GoogleMap(
                          padding: const EdgeInsets.all(2),
                          onMapCreated: _onMapCreated,
                          initialCameraPosition:
                              CameraPosition(target: _other, zoom: Responsive.isMobile(context) ? 8 : 10.5),
                          markers: Set.from(allMarkers),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 40),
              Flexible(
                flex: Responsive.isDesktop(context) ? 1 : 2,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\n Get in Touch with us',
                        style: TextStyle(
                            fontFamily: "Monserrat",
                            fontWeight: FontWeight.w600,
                            color: ColorsTheme.titleForm,
                            fontSize: Responsive.isMobile(context) ? 18 : 28,
                            wordSpacing: 1,
                            letterSpacing: 1,
                            height: 1),
                      ),
                      FormSend(),
                      Container(
                          padding: const EdgeInsets.only(top: 45, left: 7),
                          child: buttonSend(
                              context,
                              "Send",
                              () => Responsive(
                                  desktop: Welcome(
                                      height: FrameSize.screenHeight / 2),
                                  tablet: Welcome(
                                    height: FrameSize.screenHeight / 4,
                                    heightText: 3,
                                  ),
                                  mobile: Welcome(
                                    height: FrameSize.screenHeight / 2,
                                    heightText: 2,
                                    heightText2: 1,
                                  ))))
                    ]),
              ),
            ],
          ),
        ]));
  }
}
