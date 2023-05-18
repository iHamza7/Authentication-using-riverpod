import 'package:flutter/material.dart';

import '../../components/text_input_field.dart';

class Email extends StatelessWidget {
  const Email({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInputField(
      hintText: 'Email',
      onChanged: (_) {},
    );
  }
}
