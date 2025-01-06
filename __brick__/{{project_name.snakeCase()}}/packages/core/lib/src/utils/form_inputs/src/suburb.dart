import 'package:formz/formz.dart';

/// Suburb Form Input Validation Error
enum SuburbValidationError {
  /// Suburb is invalid (generic validation error)
  invalid,

  /// Suburb is empty
  empty,
}

/// {@template state}
/// Reusable Suburb form input.
/// {@endtemplate}
class Suburb extends FormzInput<String, SuburbValidationError> {
  /// {@macro state}
  const Suburb.pure() : super.pure('');

  /// {@macro state}
  const Suburb.dirty([super.value = '']) : super.dirty();

  // static final RegExp _nameRegExp = RegExp(r'^\d+$');

  @override
  SuburbValidationError? validator(final String value) {
    if (value.isEmpty) {
      return SuburbValidationError.empty;
    }

    return null;
    // return _nameRegExp.hasMatch(value) ? null
    // : SuburbValidationError.invalid;
  }
}
