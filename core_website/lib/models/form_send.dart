import 'package:core_website/models/area_form.dart';
import 'package:core_website/widgets/form_text.dart';
import 'package:flutter/material.dart';

class FormSend extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  FormSend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          formText(context, 'Full Name','Full name', 'Pease enter your full name'),
          formText(context, 'Email Address', 'Email Address', 'Please enter your email'),
          areaForm(context, 'Your Message', 'Your message', 'Please enter your message'),
        ],
      ),
    );
  }
}