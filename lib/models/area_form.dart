import 'package:core_website/config/frame_size.dart';
import 'package:core_website/config/themes/colors_theme.dart';
import 'package:core_website/utils/ui/responsive.dart';
import 'package:flutter/material.dart';

  class AreaForm extends StatelessWidget {
  const AreaForm({
    Key? key, required this.labelText, required this.hintText, required this.empty,
  }) : super(key: key);

  final String labelText, hintText, empty;

  @override
  Widget build(BuildContext context) {
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
      style: TextStyle(
        color: ColorsTheme.textForm,
        fontFamily: "Monserrat",
        fontWeight: FontWeight.normal,
        fontSize: Responsive.isMobile(context) ? 12 : 16,
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
}