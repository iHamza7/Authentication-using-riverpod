import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:form_validators/form_validators.dart';
// import 'controller/signin_controller.dart';
// import '../../components/loading_error.dart';

import '../google_signin/google_signin_button.dart';
import 'button.dart';
import 'divider.dart';
import 'email.dart';
import 'forgot_password_button.dart';
import 'password.dart';

class SignIn extends ConsumerWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.listen<SignInState>(signInProvider, (previous, current) {
    //   if (current.status.isInProgress) {
    //     LoadingSheet.show(context);
    //     // } else if (current.status.isFailure) {
    //     //   Navigator.of(context).pop();
    //     //   ErrorDialog.show(context, "${current.errorMessage}");
    //   } else if (current.status.isSuccess) {
    //     Navigator.of(context).pop();
    //   }
    // });
    return const Column(
      children: [
        EmailField(),
        SizedBox(
          height: 16,
        ),
        PasswordField(),
        ForgotButton(),
        SizedBox(
          height: 16,
        ),
        SignInButton(),
        OrDivider(),
        GoogleSignInButton(),
      ],
    );
  }
}
