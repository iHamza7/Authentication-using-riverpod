import 'package:flutter/material.dart';

import '../../components/animated_button.dart';

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
        Name(),
        SizedBox(
          height: 16,
        ),
        Email(),
        SizedBox(
          height: 16,
        ),
        Password(),
        SignUpButton(),
      ],
    );
  }
}
