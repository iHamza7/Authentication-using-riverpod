import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String error;
  const ErrorDialog(this.error, {super.key});

  static Future<void> show(BuildContext context, String errorMessage) {
    return showDialog(
      context: context,
      builder: (_) => ErrorDialog(errorMessage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(error),
      actions: [
        ActionChip(
          label: const Text('Okay'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
