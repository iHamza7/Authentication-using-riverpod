import 'package:flutter/material.dart';

import 'button.dart';
import 'email.dart';
import 'name.dart';
import 'password.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NameField(),
        SizedBox(
          height: 16,
        ),
        Email(),
        SizedBox(
          height: 16,
        ),
        Password(),
        SizedBox(
          height: 16,
        ),
        SignUpButton(),
      ],
    );
  }
}
