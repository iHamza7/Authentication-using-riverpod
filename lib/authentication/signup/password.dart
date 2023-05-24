import 'package:flutter/material.dart';

import '../../components/text_input_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'controller/signup_controller.dart';
import 'package:form_validators/form_validators.dart';

class PasswordField extends ConsumerWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpState = ref.watch(signUpProvider);
    final showError = signUpState.password.isNotValid;
    final signUpController = ref.read(signUpProvider.notifier);
    return TextInputField(
      hintText: 'Password',
      errorText: showError
          ? Password.showPasswordError(signUpState.password.error)
          : null,
      obscureText: true,
      onChanged: (password) {
        signUpController.onPasswordChange(password);
      },
    );
  }
}
