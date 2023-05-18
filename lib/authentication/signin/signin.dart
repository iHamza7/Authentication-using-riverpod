import 'package:flutter/material.dart';

import 'button.dart';
import 'email.dart';
import 'name.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
        SignInButton(),
      ],
    );
  }
}
