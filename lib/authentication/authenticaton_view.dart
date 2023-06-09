import 'package:flutter/material.dart';

import '../components/animated/animated_shape.dart';
import '../components/auth_switch_button.dart';

import '../components/slide_fade_switcher.dart';
import 'signin/signin.dart';
import 'signup/signup.dart';

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
            child: SlideFadeSwitcher(
              child: _showSignIn ? const SignIn() : const SignUp(),
            ),
          ),
          const AnimatedShape(
              color: Color(0XFF595DC6), show: true, text: "Create Account"),
          // SafeArea(
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 16),
          //     child: _showSignIn
          //         ? const Text(
          //             "Welcome Back",
          //             style: TextStyle(
          //               fontSize: 34,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.black87,
          //             ),
          //           )
          //         : const Text(
          //             "Create Account",
          //             style: TextStyle(
          //               fontSize: 34,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.black87,
          //             ),
          //           ),
          //   ),
          // ),
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
