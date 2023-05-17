import 'package:flutter/material.dart';

import '../../components/animated_button.dart';
import '../../components/text_input_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextInputField(
          hintText: 'Email',
          onChanged: (_) {},
        ),
        TextInputField(
          hintText: 'Password',
          onChanged: (_) {},
        ),
        AnimatedButton(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 18),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0XFFF5D973),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              'SignIn',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
