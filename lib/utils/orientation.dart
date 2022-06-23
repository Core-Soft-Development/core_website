import 'package:flutter/material.dart';

class OrientationSwitch extends StatelessWidget {

  final List<Widget> children;

  const OrientationSwitch({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.portrait
    ? Column(children: children)
    : Row(children: children);
  }
}