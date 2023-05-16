import 'package:flutter/material.dart';

class SizeFadeSwitcher extends StatelessWidget {
  final Widget child;
  const SizeFadeSwitcher({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: SizeTransition(
            sizeFactor: animation,
            child: child,
          ),
        );
      },
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeIn,
      duration: const Duration(
        milliseconds: 400,
      ),
      child: child,
    );
  }
}
