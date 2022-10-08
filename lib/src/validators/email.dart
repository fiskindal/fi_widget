import 'package:formz/formz.dart';
import 'package:kartal/kartal.dart';

enum EmailValidationError { invalid }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');

  const Email.dirty([super.value = '']) : super.dirty();

  @override
  EmailValidationError? validator(String? value) {
    return value.isValidEmail ? null : EmailValidationError.invalid;
  }
}
