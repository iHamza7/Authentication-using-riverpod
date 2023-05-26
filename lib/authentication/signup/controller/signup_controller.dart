import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';
import 'package:equatable/equatable.dart';
import 'package:authentication_repository/authentication_repository.dart';
import '../../../repository/auth_repo_provider.dart';
part 'signup_state.dart';

final signUpProvider =
    StateNotifierProvider.autoDispose<SignUpController, SignUpState>(
        (ref) => SignUpController(ref.watch(authRepoProvider)));

class SignUpController extends StateController<SignUpState> {
  final AuthenticationRepository _authenticationRepository;
  SignUpController(this._authenticationRepository) : super(const SignUpState());

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
    if (state.status.isInitial) return;
    state = state.copyWith(status: FormzSubmissionStatus.inProgress);
    try {
      _authenticationRepository.signUpWithEmailAndPassword(
          email: state.email.value, password: state.password.value);
      state = state.copyWith(status: FormzSubmissionStatus.success);
    } on SignUpWithEmailAndPasswordFailure catch (e) {
      state = state.copyWith(
          status: FormzSubmissionStatus.failure, errormessage: e.code);
    }
  }
}
