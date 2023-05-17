import 'package:flutter/material.dart';

import 'size_fade_switcher.dart';

class TextInputField extends StatelessWidget {
  final String hintText;
  final String? errorText;

  final bool obscureText;
  final void Function(String value) onChanged;
  const TextInputField({
    super.key,
    required this.hintText,
    this.errorText,
    this.obscureText = false,
    required this.onChanged,
  });

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
          child: TextField(
            onChanged: onChanged,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC2C2C2),
              ),
            ),
          ),
        ),
        SizeFadeSwitcher(
          child: errorText != null
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                  child: Text(
                    errorText!,
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
