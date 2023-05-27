part of 'signup_controller.dart';

class SignUpState extends Equatable {
  final Name name;
  final Email email;
  final Password password;
  final FormzSubmissionStatus status;
  final String? errormessage;

  const SignUpState({
    this.name = const Name.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.errormessage,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        password,
        status,
      ];

  SignUpState copyWith({
    Name? name,
    Email? email,
    Password? password,
    FormzSubmissionStatus? status,
    String? errormessage,
  }) {
    return SignUpState(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      errormessage: errormessage ?? this.errormessage,
    );
  }
}
