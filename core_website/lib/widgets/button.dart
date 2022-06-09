import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

TextButton buttonSend(
    BuildContext context, String text, Widget Function() createPage) {
  return TextButton(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsTheme.buttonSend),
        elevation: MaterialStateProperty.all(2),
        padding: MaterialStateProperty.all(
            const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))),
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => createPage()));
    },
    child: Text(
      text,
      style: const TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
    ),
  );
}

TextButton buttonProject(String text) {
  return TextButton(
      child: Text(text),
      onPressed: () {},
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(const TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: ColorsTheme.primaryColor,
          color: ColorsTheme.primaryColor,
          fontFamily: "Monserrat",
          fontSize: 20,
        )),
      ));
}

DecoratedBox buttonContact(BuildContext context, String text,
    Widget Function() createPage, List _isHovering, int index) {
  return DecoratedBox(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [Color.fromARGB(150, 255, 137, 101),
        Color.fromARGB(50, 255, 111, 67)],
        /* begin: Alignment.topCenter,
        end: Alignment.bottomCenter */
        ),
    ),
    child: TextButton(
      style: ButtonStyle(
          //backgroundColor: MaterialStateProperty.all(ColorsTheme.buttonSend),
          elevation: MaterialStateProperty.all(2),
          padding: MaterialStateProperty.all(
              const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => createPage()));
      },
      child: Text(
        text,
        style: TextStyle(
          color: _isHovering[index] ? Colors.black54 : Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    ),
  );
}
