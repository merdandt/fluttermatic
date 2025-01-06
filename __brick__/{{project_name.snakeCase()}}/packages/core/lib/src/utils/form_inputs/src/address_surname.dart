import 'package:formz/formz.dart';

/// AddressSurname Form Input Validation Error
enum AddressSurnameValidationError {
  /// AddressSurname is invalid (generic validation error)
  invalid,

  /// AddressSurname is empty
  empty,
}

/// {@template surname}
/// Reusable AddressSurname form input.
/// {@endtemplate}
class AddressSurname extends FormzInput<String, AddressSurnameValidationError> {
  /// {@macro surname}
  const AddressSurname.pure() : super.pure('');

  /// {@macro surname}
  const AddressSurname.dirty([super.value = '']) : super.dirty();

  static final RegExp _surnameRegExp = RegExp(r'^\s*([A-Za-z]+)\s*$');

  @override
  AddressSurnameValidationError? validator(final String value) {
    if (value.isEmpty) {
      return AddressSurnameValidationError.empty;
    }

    return _surnameRegExp.hasMatch(value)
        ? null
        : AddressSurnameValidationError.invalid;
  }
}
