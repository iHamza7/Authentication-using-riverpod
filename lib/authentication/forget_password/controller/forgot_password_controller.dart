import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:equatable/equatable.dart';
import 'package:form_validators/form_validators.dart';
import '../../../repository/auth_repo_provider.dart';

part 'forgot_password_state.dart';

final forgotPasswordProvider =
    StateNotifierProvider<ForgotPasswordController, ForgotPasswordState>(
        (ref) => ForgotPasswordController(ref.watch(authRepoProvider)));

class ForgotPasswordController extends StateNotifier<ForgotPasswordState> {
  final AuthenticationRepository _authenticationRepository;
  ForgotPasswordController(this._authenticationRepository)
      : super(const ForgotPasswordState());
  void onEmailChange(String value) {
    final email = Email.dirty(value);
    final statusemail = Formz.validate([email]);
    state = state.copyWith(
      email: email,
      status: statusemail
          ? FormzSubmissionStatus.success
          : FormzSubmissionStatus.failure,
    );
  }

  Future<void> forgotPassword() async {
    if (state.status.isFailure) return;
    state = state.copyWith(status: FormzSubmissionStatus.inProgress);
    try {
      _authenticationRepository.forgotPassword(
        email: state.email.value,
      );
      state = state.copyWith(status: FormzSubmissionStatus.success);
    } on ForgotPasswordFailure catch (e) {
      state = state.copyWith(
          status: FormzSubmissionStatus.failure, errorMessage: e.code);
    }
  }
}
