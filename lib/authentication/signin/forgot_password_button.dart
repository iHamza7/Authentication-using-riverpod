import 'package:flutter/material.dart';

import '../forget_password/forgot_password.dart';

class ForgotButton extends StatelessWidget {
  const ForgotButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            fullscreenDialog: true,
            builder: (_) => const ForgotPasswordView()));
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Forgot Password',
            style: TextStyle(
              color: Color(0XFF6574FF),
            ),
          ),
        ),
      ),
    );
  }
}
