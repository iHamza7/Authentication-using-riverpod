import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:form_validators/form_validators.dart';
// import 'controller/signup_controller.dart';
// import '../../components/loading_error.dart';
import 'button.dart';
import 'email.dart';
import 'name.dart';
import 'password.dart';

class SignUp extends ConsumerWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.listen<SignUpState>(signUpProvider, (previous, current) {
    //   if (current.status.isInProgress) {
    //     LoadingSheet.show(context);
    //     // } else if (current.status.isFailure) {
    //     //   Navigator.of(context).pop();
    //     //   ErrorDialog.show(context, "${current.errormessage}");
    //   } else if (current.status.isSuccess) {
    //     Navigator.of(context).pop();
    //   }
    // });
    return const Column(
      children: [
        NameField(),
        SizedBox(
          height: 16,
        ),
        EmailField(),
        SizedBox(
          height: 16,
        ),
        PasswordField(),
        SizedBox(
          height: 16,
        ),
        SignUpButton(),
      ],
    );
  }
}
