import 'package:flutter/material.dart';

class AuthSwitchButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool showSignIn;
  const AuthSwitchButton({
    super.key,
    required this.onTap,
    required this.showSignIn,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 50,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: const Text('toggle '),
        ),
      ),
    );
  }
}
