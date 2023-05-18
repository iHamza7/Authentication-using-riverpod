import 'package:flutter/material.dart';

import '../../components/animated_button.dart';
import '../../components/roundedbutton.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onTap: () {},
      child: const RoundedButton(
        title: 'SignUp',
      ),
    );
  }
}
