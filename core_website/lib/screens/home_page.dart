import 'package:core_website/widgets/body.dart';
import 'package:core_website/widgets/navbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
           Color(0xFFFF8A65),
           Color(0xFFFF7043),
        ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [Navbar(), const Body()],
            ),
          ),
        ),
    );
  }
}