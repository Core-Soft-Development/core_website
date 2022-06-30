import 'package:core_website/models/area_form.dart';
import 'package:core_website/models/form_text.dart';
import 'package:flutter/material.dart';

class FormSend extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  FormSend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: const [
          FormText(labelText: 'Full Name', hintText: 'Full name', empty: 'Pease enter your full name',),
          FormText(labelText:'Email Address', hintText: 'Email Address', empty: 'Please enter your email'),
          AreaForm(labelText: 'Your Message', hintText: 'Your Message', empty: 'Please enter your message',)
        ],
      ),
    );
  }
}