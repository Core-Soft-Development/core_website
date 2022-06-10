import 'package:core_website/widgets/area_form.dart';
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
          formText(context, 'Name','Full name', 'Pease enter your full name'),
            const SizedBox(height: 24,),
          formText(context, 'Email', 'Email Address', 'Please enter your email'),
          const SizedBox(height: 24,),
          areaForm(context, 'Message', 'Your message', 'Please enter your message')
        ],
      ),
    );
  }
}