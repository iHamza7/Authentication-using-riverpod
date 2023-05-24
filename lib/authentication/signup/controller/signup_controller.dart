import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';
import 'package:equatable/equatable.dart';
part 'signup_state.dart';

final signUpProvider =
    StateNotifierProvider.autoDispose<SignUpController, SignUpState>(
        (ref) => SignUpController());

class SignUpController extends StateController<SignUpState> {
  SignUpController() : super(const SignUpState());

  void onNameChange(String value) {
    final name = Name.dirty(value);

    final statusname = Formz.validate([name, state.email, state.password]);
    state = state.copyWith(
      name: name,
      status: statusname
          ? FormzSubmissionStatus.success
          : FormzSubmissionStatus.failure,
    );
  }

  void onEmailChange(String value) {
    final email = Email.dirty(value);
    final statusemail = Formz.validate([state.name, email, state.password]);
    state = state.copyWith(
      email: email,
      status: statusemail
          ? FormzSubmissionStatus.success
          : FormzSubmissionStatus.failure,
    );
  }

  void onPasswordChange(String value) {
    final password = Password.dirty(value);
    final statuspassword = Formz.validate([password, state.email, state.name]);
    state = state.copyWith(
      password: password,
      status: statuspassword
          ? FormzSubmissionStatus.success
          : FormzSubmissionStatus.failure,
    );
  }

  void signUpWithEmailAndPassword() async {
    if (!state.status.isSuccess) return;
  }
}
