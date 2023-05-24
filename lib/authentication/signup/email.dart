import 'package:flutter/material.dart';

import '../../components/text_input_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'controller/signup_controller.dart';
import 'package:form_validators/form_validators.dart';

class EmailField extends ConsumerWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpState = ref.watch(signUpProvider);
    final showError = signUpState.email.isNotValid;
    final signUpController = ref.read(signUpProvider.notifier);
    return TextInputField(
      hintText: 'Email',
      errorText:
          showError ? Email.showEmailError(signUpState.email.error) : null,
      onChanged: (email) => signUpController.onEmailChange(email),
    );
  }
}
