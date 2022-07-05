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

TextButton buttonProject(String text, double size) {

  return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: ColorsTheme.titleColor,
          color: ColorsTheme.titleColor,
          fontFamily: "Monserrat",
          fontSize: size,
          fontWeight: FontWeight.w700,
          height: 1
        )),
      ),
      child: Text(text));
}

Container buttonContact(BuildContext context, String text, List isHovering, int index) {
  return Container(
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: ColorsTheme.gradientColor,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        ),
        borderRadius: BorderRadius.circular(8),
    ),
    padding: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
      child: Text(
        text,
        style: TextStyle(
          color: isHovering[index] ? Colors.black54 : Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    //),
  );
}
