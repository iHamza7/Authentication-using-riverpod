import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../authentication/controller/authentication_controller.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController = ref.read(authProvider.notifier);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('UserID'),
            const Text('User Email'),
            const Text('Email verified'),
            TextButton(
                onPressed: () {
                  authController.onSignOut();
                },
                child: const Text('SignOut'))
          ],
        ),
      ),
    );
  }
}
