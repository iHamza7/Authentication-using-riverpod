import 'package:flutter/material.dart';

import 'slide_fade_switcher.dart';

const _KTextStyle =
    TextStyle(fontWeight: FontWeight.w500, color: Color(0XFF9A9A9A));

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
          child: SlideFadeSwitcher(
            child: showSignIn
                ? const Text(
                    "Don't have account? SignUp ",
                    key: ValueKey('SignUp'),
                    style: _KTextStyle,
                  )
                : const Text(
                    "Already have account? SignIn ",
                    key: ValueKey('SignIn'),
                    style: _KTextStyle,
                  ),
          ),
        ),
      ),
    );
  }
}
