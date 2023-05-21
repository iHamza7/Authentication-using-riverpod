import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:equatable/equatable.dart';
// import 'package:form_validators/form_validators.dart';

import 'signup_state.dart';

class SignUpController extends StateController<SignUpState> {
  SignUpController() : super(const SignUpState());

  //  void onNameChange(String value) {
  //   final name = Name.dirty(value);
  //   state = state.copyWith(
  //     name: name,
  //     status: Formz.validate([
  //       name,
  //       state.email,
  //       state.password,
  //     ]),
  //   );
  // }
}
