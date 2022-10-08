import 'package:formz/formz.dart';
import 'package:kartal/kartal.dart';

enum PasswordValidationError { invalid }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    return value.isValidPassword ? null : PasswordValidationError.invalid;
  }
}
