part of 'signin_controller.dart';

class SigInState extends Equatable {
  final Email email;
  final Password password;
  final FormzSubmissionStatus status;
  final String? errorMessage;

  const SigInState(
      {this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.status = FormzSubmissionStatus.initial,
      this.errorMessage});

  SigInState copyWith({
    Email? email,
    Password? password,
    FormzSubmissionStatus? status,
    bool? buttonTapped,
    String? errorMessage,
  }) {
    return SigInState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        status,
      ];
}
