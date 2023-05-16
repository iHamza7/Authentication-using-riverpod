import 'package:flutter/material.dart';

import 'size_fade_switcher.dart';

class TextInputField extends StatelessWidget {
  final bool showSignIn;
  const TextInputField(this.showSignIn, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0XFFD0D0D0), width: 1.5)),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Email',
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC2C2C2),
              ),
            ),
          ),
        ),
        SizeFadeSwitcher(
          child: showSignIn
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                  child: Text(
                    'error',
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.error),
                  ),
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
