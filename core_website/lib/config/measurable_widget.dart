import 'dart:async';

import 'package:flutter/material.dart';

class MeasurableWidget extends StatefulWidget {
  final Widget? child;
  final void Function(Size size)? onSized;

  const MeasurableWidget({this.child, this.onSized, Key? key}) : super(key: key);

  @override
  State<MeasurableWidget> createState() => _MeasurableWidgetState();
}

class _MeasurableWidgetState extends State<MeasurableWidget> {
  bool _hasMeasured =false;

  @override
  Widget build(BuildContext context) {
    Size size = (context.findRenderObject() as RenderBox).size;
    if(size != Size.zero) {
      widget.onSized?.call(size);
    } else if(!_hasMeasured) {
      scheduleMicrotask(() => setState(() => _hasMeasured = true));
    }
    return widget.child!;
  }
}
