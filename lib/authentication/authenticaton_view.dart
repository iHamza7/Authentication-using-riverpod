import 'package:flutter/material.dart';
import '../components/animated_button.dart';
import '../components/auth_switch_button.dart';
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
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 250, 16, 0),
            child: Column(
              children: [
                TextInputField(
                  hintText: 'Email',
                  onChanged: (_) {},
                ),
                TextInputField(
                  hintText: 'Password',
                  onChanged: (_) {},
                ),
                AnimatedButton(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0XFFF5D973),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'SignIn',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          AuthSwitchButton(
            onTap: () {
              setState(() {
                _showSignIn = !_showSignIn;
              });
            },
            showSignIn: _showSignIn,
          ),
        ],
      ),
    );
  }
}
