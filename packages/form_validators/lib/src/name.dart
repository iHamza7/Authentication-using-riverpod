import 'package:form_validators/form_validators.dart';
import 'package:formz/formz.dart';

enum NameValidationError { empty, invalid }

class Name extends FormzInput<String, NameValidationError> {
  const Name.pure() : super.pure('');
  const Name.dirty([String value = '']) : super.dirty(value);

  @override
  NameValidationError? validator(String value) {
    if (value.isEmpty) {
      return NameValidationError.empty;
    } else if (value.length < 3) {
      return NameValidationError.invalid;
    } else {
      return null;
    }
  }

  static String? showNameError(NameValidationError? error) {
    if (error == NameValidationError.empty) {
      return 'EmptyName';
    } else if (error == NameValidationError.invalid) {
      return 'Too Short ';
    } else {
      return null;
    }
  }
}
