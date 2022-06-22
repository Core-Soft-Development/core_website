import 'package:flutter/material.dart';

class Section {
  final GlobalKey key;
  final String title;

  Section(this.key, this.title);
}

final sections = [
    Section(GlobalKey(), 'Home'),
    Section(GlobalKey(), 'Services'),
    Section(GlobalKey(), 'AboutUs'),
    Section(GlobalKey(), 'Client'),
    Section(GlobalKey(), 'Portfolio'),
    Section(GlobalKey(), 'Blog'),
    Section(GlobalKey(), 'Contact'),
  ];