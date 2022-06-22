import 'package:core_website/utils/key_widgets.dart';
import 'package:flutter/material.dart';

class Blog extends StatefulWidget {
  const Blog({ Key? key }) : super(key: key);

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyWidgets.keyBlog,
    );
  }
}