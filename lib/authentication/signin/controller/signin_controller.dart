import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:equatable/equatable.dart';
import 'package:form_validators/form_validators.dart';
import 'package:authentication_repository/authentication_repository.dart';
import '../../../repository/auth_repo_provider.dart';

part 'signin_state.dart';

final signInProvider =
    StateNotifierProvider.autoDispose<SigInController, SigInState>(
        (ref) => SigInController(ref.watch(authRepoProvider)));

class SigInController extends StateNotifier<SigInState> {
  final AuthenticationRepository _authenticationRepository;
  SigInController(this._authenticationRepository) : super(const SigInState());

  void onEmailChanged(String value) {
    final email = Email.dirty(value);
    final statusemail = Formz.validate([email, state.password]);
    state = state.copyWith(
      email: email,
      status: statusemail
          ? FormzSubmissionStatus.success
          : FormzSubmissionStatus.failure,
    );
  }

  void onPasswordChanged(String value) {
    final password = Password.dirty(value);
    final statuspassword = Formz.validate([password, state.email]);
    state = state.copyWith(
      password: password,
      status: statuspassword
          ? FormzSubmissionStatus.success
          : FormzSubmissionStatus.failure,
    );
  }

  void signInWithEmailAndPassword() async {
    if (state.status.isFailure) return;
    state = state.copyWith(status: FormzSubmissionStatus.inProgress);
    try {
      _authenticationRepository.signInWithEmailAndPassword(
          email: state.email.value, password: state.password.value);
      state = state.copyWith(status: FormzSubmissionStatus.success);
    } on SignInWithEmailAndPasswordFailure catch (e) {
      state = state.copyWith(
          status: FormzSubmissionStatus.failure, errorMessage: e.code);
    }
  }
}
