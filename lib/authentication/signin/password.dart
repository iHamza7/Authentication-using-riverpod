import 'package:flutter/material.dart';

import '../../components/text_input_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';

import 'controller/signin_controller.dart';

class PasswordField extends ConsumerWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInState = ref.watch(signInProvider);
    final bool showError = signInState.password.isNotValid;
    final sigInController = ref.read(signInProvider.notifier);
    return TextInputField(
      hintText: 'Password',
      obscureText: true,
      errorText: showError
          ? Password.showPasswordError(signInState.password.error)
          : null,
      onChanged: (password) => sigInController.onPasswordChanged(password),
    );
  }
}
