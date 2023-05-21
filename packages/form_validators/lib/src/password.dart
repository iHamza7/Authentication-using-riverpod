import 'package:formz/formz.dart';

enum PasswordValidationError { empty, invalid }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return PasswordValidationError.empty;
    } else if (value.length < 6) {
      return PasswordValidationError.invalid;
    } else {
      return null;
    }
  }

  static String? showPasswordError(PasswordValidationError? error) {
    if (error == PasswordValidationError.empty) {
      return 'Empty Password';
    } else if (error == PasswordValidationError.invalid) {
      return 'invalid Password';
    } else {
      return null;
    }
  }
}
