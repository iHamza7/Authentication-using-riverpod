import 'package:flutter/material.dart';

import '../../components/text_input_field.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInputField(
      hintText: 'Password',
      obscureText: true,
      onChanged: (_) {},
    );
  }
}
