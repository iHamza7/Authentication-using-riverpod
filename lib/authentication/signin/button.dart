import 'package:flutter/material.dart';

import '../../components/animated_button.dart';
// import '../../components/loading_error.dart';
import '../../components/roundedbutton.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onTap: () {
        // ErrorDialog.show(context, 'failed loading');
        // LoadingSheet.show(context);
      },
      child: const RoundedButton(
        title: 'SignIn',
      ),
    );
  }
}
