import 'package:equatable/equatable.dart';
import 'package:form_validators/form_validators.dart';

class SignUpState extends Equatable {
  final Name name;
  final Email email;
  final Password password;

  final String? errormessage;

  const SignUpState({
    this.name = const Name.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),

    // this.status = FormzStatus.
    this.errormessage,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        password,
        // status,
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
      // status: status ?? this.status,
      errormessage: errormessage ?? this.errormessage,
    );
  }
}
