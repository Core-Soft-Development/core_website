import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

TextButton buttonSend(
    BuildContext context, String text, Widget Function() createPage) {
  return TextButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(ColorsTheme.buttonSend),
      elevation: MaterialStateProperty.all(2),
      padding: MaterialStateProperty.all(const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20)),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ))
      ),
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
