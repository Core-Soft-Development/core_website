/* import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart'; */

/* Widget map() {
  String htmlId = "7";

  ui.platformViewRegistry.regiterViewFactory(htmlId, (int viewId){
    final myLatlng = LatLng(1.3521, 103.8198);

    final mapOptions = MapOptions()
    ..zoom = 10
    ..center = LatLng(1.3521, 103.8198);

    final elem = DivElement()
      ..id = htmlId
      ..style.width = "100%"
      ..style.height = "100%"
      ..style.border = 'none';

    final map = GMap(elem, mapOptions);

    Marker(MarkerOptions()
      ..position = myLatlng
      ..map = map
      ..title = 'Hello World!'
      );

    return elem;
  });
  return HtmlElementView(viewType: htmlId);
} */