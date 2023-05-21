import 'package:form_validators/form_validators.dart';
import 'package:formz/formz.dart';

enum EmailValidationError { empty, invalid }

const String _kEmailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty([String value = '']) : super.dirty(value);

  static final _reg = RegExp(_kEmailPattern);

  @override
  EmailValidationError? validator(String value) {
    if (_reg.hasMatch(value)) {
      return null;
    } else if (value.isEmpty) {
      return EmailValidationError.empty;
    } else {
      return EmailValidationError.invalid;
    }
  }

  static String? showEmailError(EmailValidationError? error) {
    if (error == EmailValidationError.empty) {
      return 'Empty Email';
    } else if (error == EmailValidationError.invalid) {
      return 'invalid';
    } else {
      return null;
    }
  }
}
