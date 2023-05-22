import 'package:flutter/material.dart';

import '../../components/text_input_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'controller/signup_controller.dart';
import 'package:form_validators/form_validators.dart';

class NameField extends ConsumerWidget {
  const NameField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpState = ref.watch(signUpProvider);
    return TextInputField(
      hintText: 'Name',
      errorText: signUpState.name.isNotValid
          ? Name.showNameError(signUpState.name.error)
          : null,
      onChanged: (name) {
        ref.read(signUpProvider.notifier).onNameChange(name);
      },
    );
  }
}
