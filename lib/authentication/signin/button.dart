import 'package:flutter/material.dart';

import '../../components/animated_button.dart';
// import '../../components/loading_error.dart';
import '../../components/roundedbutton.dart';
import 'package:form_validators/form_validators.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controller/signin_controller.dart';

class SignInButton extends ConsumerWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInState = ref.watch(signInProvider);
    final bool isValidated = signInState.status.isSuccess;
    final signInController = ref.read(signInProvider.notifier);
    return AnimatedButton(
      onTap: isValidated
          ? () => signInController.signInWithEmailAndPassword()
          : null,
      // ErrorDialog.show(context, 'failed loading');
      // LoadingSheet.show(context);

      child: const RoundedButton(
        title: 'SignIn',
      ),
    );
  }
}
