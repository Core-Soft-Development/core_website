import 'package:core_website/utils/key_widgets.dart';
import 'package:flutter/material.dart';

class BoxWidgets {

  static final boxHome = KeyWidgets.keyWelcome.currentContext?.findRenderObject() as RenderBox;
  static final boxService = KeyWidgets.keyService.currentContext?.findRenderObject() as RenderBox;
  static final boxAbout = KeyWidgets.keyAbout.currentContext?.findRenderObject() as RenderBox;
  static final boxClient = KeyWidgets.keyClient.currentContext?.findRenderObject() as RenderBox;
  static final boxPortfolio = KeyWidgets.keyPortfolio.currentContext?.findRenderObject() as RenderBox;
  static final boxBlog = KeyWidgets.keyBlog.currentContext?.findRenderObject() as RenderBox;
  static final boxContact = KeyWidgets.keyContact.currentContext?.findRenderObject() as RenderBox;

  Size? sizeBox;
  Offset? position;
  double? height;

  setState(index) {
    position = index.localToGlobal(Offset.zero);
    sizeBox = index.size;
    height = sizeBox?.height ?? 0;
  }
}