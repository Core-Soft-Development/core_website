import 'package:flutter/material.dart';

  TextFormField formText(BuildContext context, String labelText, String hintText, String empty) {
    return TextFormField(
      keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))
            ),
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