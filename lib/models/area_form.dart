import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:flutter/material.dart';

  Container areaForm (BuildContext context, String labelText, String hintText, String empty) {
    
    return Container(
      width: FrameSize.screenWidth / 1.30,
      padding: const EdgeInsets.only(top: 45, left: 7),
      child: TextFormField(
        maxLines: null,
        keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
                color: ColorsTheme.textForm,
                fontFamily: "Monserrat",
                fontWeight: FontWeight.normal),
        hintText: hintText,
        hintStyle: const TextStyle(
                color: ColorsTheme.textForm,
                fontFamily: "Monserrat",
                fontWeight: FontWeight.normal),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 50)
      ),
      style: const TextStyle(
        color: ColorsTheme.textForm,
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
          ),
    );
  }