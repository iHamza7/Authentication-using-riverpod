import 'package:flutter/material.dart';

import '../../components/animated_button.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
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
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
