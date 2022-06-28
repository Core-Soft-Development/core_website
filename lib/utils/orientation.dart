import 'package:core_website/config/frame_size.dart';
import 'package:flutter/material.dart';

class OrientationSwitch extends StatelessWidget {

  final List<Widget> children;

  const OrientationSwitch({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = FrameSize.mediaQueryData.orientation;
    return orientation == Orientation.portrait
    ? Column(children: children)
    : Row(children: children);
  }
}