import 'package:flutter/material.dart';
import '../components/text_input_field.dart';

class AuthenticationView extends StatefulWidget {
  const AuthenticationView({super.key});

  @override
  State<AuthenticationView> createState() => _AuthenticationViewState();
}

class _AuthenticationViewState extends State<AuthenticationView> {
  bool _showSignIn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 250, 16, 0),
        child: Column(
          children: [
            TextInputField(_showSignIn),
            GestureDetector(
              onTap: () {
                setState(() {
                  _showSignIn = !_showSignIn;
                });
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('toggle'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
