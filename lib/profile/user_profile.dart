import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../authentication/controller/authentication_controller.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController = ref.read(authProvider.notifier);
    final authUser = ref.watch(authProvider).user;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('UserID : ${authUser.id}'),
            Text('User Email: ${authUser.email}'),
            Text('Email verified: ${authUser.emailVerified}'),
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
