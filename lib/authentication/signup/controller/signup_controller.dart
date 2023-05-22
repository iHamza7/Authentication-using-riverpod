import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';
// import 'package:equatable/equatable.dart';

import 'signup_state.dart';

class SignUpController extends StateController<SignUpState> {
  SignUpController() : super(const SignUpState());

  onNameChange(String value) {
    final name = Name.dirty(value);
    final status = Formz.validate([name, state.email, state.password]);
    state = state.copyWith(
      name: name,
      status: FormzSubmissionStatus.initial,
    );
    return status;

    // state = state.copyWith(
    //   name: name,

    //   status: Formz .validate([name, state.email, state.password, ]),
    // );
  }

  void signUpWithEmailAndPassword() async {
    if (!state.status.isSuccess) return;
  }
}
