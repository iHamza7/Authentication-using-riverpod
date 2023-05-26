import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:equatable/equatable.dart';
import 'package:form_validators/form_validators.dart';

part 'signin_state.dart';

class SigInController extends StateNotifier<SigInState> {
  SigInController() : super(const SigInState());

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
  }
}
