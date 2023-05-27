import 'package:flutter/material.dart';

import '../../components/text_input_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';

import 'controller/signin_controller.dart';

class EmailField extends ConsumerWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInState = ref.watch(signInProvider);
    final bool showError = signInState.email.isNotValid;
    final sigInController = ref.read(signInProvider.notifier);
    return TextInputField(
      hintText: 'Email',
      errorText:
          showError ? Email.showEmailError(signInState.email.error) : null,
      onChanged: (email) => sigInController.onEmailChanged(email),
    );
  }
}
