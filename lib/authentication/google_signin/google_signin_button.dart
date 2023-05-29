import 'package:flutter/material.dart';

import '../../components/animated_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GoogleSignInButton extends ConsumerWidget {
  const GoogleSignInButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedButton(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1.5,
            color: Colors.black.withOpacity(0.4),
          ),
        ),
        child: const Text(
          'SignIn With Google',
          style: TextStyle(
            color: Color(0XFF9A9A9A),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
