import 'package:flutter/material.dart';

import '../../components/text_input_field.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInputField(
      hintText: 'Name',
      onChanged: (_) {},
    );
  }
}
