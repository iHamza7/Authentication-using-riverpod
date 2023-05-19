import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

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

class LoadingSheet extends StatelessWidget {
  const LoadingSheet({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet(
        isDismissible: false,
        enableDrag: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(48),
          ),
        ),
        context: context,
        builder: (_) => const LoadingSheet());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Center(
        child: LoadingAnimationWidget.fourRotatingDots(
            color: Colors.blueGrey.shade700, size: 80),
      ),
    );
  }
}
