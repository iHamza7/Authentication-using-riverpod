import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('UserID'),
            const Text('User Email'),
            const Text('Email verified'),
            TextButton(onPressed: () {}, child: const Text('SignOut'))
          ],
        ),
      ),
    );
  }
}
