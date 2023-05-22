import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';
import 'package:equatable/equatable.dart';
// import 'package:equatable/equatable.dart';
part 'signup_state.dart';

final signUpProvider = StateNotifierProvider<SignUpController, SignUpState>(
    (ref) => SignUpController());

class SignUpController extends StateController<SignUpState> {
  SignUpController() : super(const SignUpState());

  void onNameChange(String value) {
    final name = Name.dirty(value);
    final status = Formz.validate([name, state.email, state.password]);
    state = state.copyWith(
      name: name,
      status: FormzSubmissionStatus.initial,
    );
  }

  void onEmailChange(String value) {
    final email = Email.dirty(value);
    final status = Formz.validate([email, state.name, state.password]);
    state = state.copyWith(
      email: email,
      status: FormzSubmissionStatus.initial,
    );
  }

  void onPasswordChange(String value) {
    final password = Password.dirty(value);
    final status = Formz.validate([password, state.email, state.name]);
    state = state.copyWith(
      password: password,
      status: FormzSubmissionStatus.initial,
    );
  }

  void signUpWithEmailAndPassword() async {
    if (!state.status.isSuccess) return;
  }
}
