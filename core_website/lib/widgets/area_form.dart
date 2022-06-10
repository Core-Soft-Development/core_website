import 'package:flutter/material.dart';

  TextFormField areaForm (BuildContext context, String labelText, String hintText, String empty) {
    return TextFormField(
      textAlign: TextAlign.justify,
      maxLines: null,
      keyboardType: TextInputType.multiline,
    decoration: InputDecoration(
      labelText: labelText,
      hintText: hintText,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4))
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 50)
    ),
    style: const TextStyle(
      fontFamily: "Monserrat",
      fontWeight: FontWeight.normal,
      fontSize: 16,
      wordSpacing: 1,
      letterSpacing: 1),
    validator: (value) {
      if (value!.isEmpty) {
        return empty;
      }
      return null;
    },
        );
  }