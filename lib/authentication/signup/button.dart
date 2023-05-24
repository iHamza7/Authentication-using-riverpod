import 'package:flutter/material.dart';

import '../../components/animated_button.dart';
import '../../components/roundedbutton.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'controller/signup_controller.dart';
import 'package:form_validators/form_validators.dart';

class SignUpButton extends ConsumerWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpState = ref.watch(signUpProvider);
    final signUpController = ref.read(signUpProvider.notifier);
    final bool isValidated = signUpState.status.isSuccess;
    return AnimatedButton(
      onTap: isValidated
          ? () => signUpController.signUpWithEmailAndPassword()
          : null,
      child: const RoundedButton(
        title: 'SignUp',
      ),
    );
  }
}
