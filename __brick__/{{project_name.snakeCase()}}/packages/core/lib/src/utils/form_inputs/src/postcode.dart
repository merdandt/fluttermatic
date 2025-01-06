import 'package:formz/formz.dart';

/// Postcode Form Input Validation Error
enum PostcodeValidationError {
  /// Postcode is invalid (generic validation error)
  invalid,

  /// Postcode is empty
  empty,
}

/// {@template state}
/// Reusable Postcode form input.
/// {@endtemplate}
class Postcode extends FormzInput<String, PostcodeValidationError> {
  /// {@macro state}
  const Postcode.pure() : super.pure('');

  /// {@macro state}
  const Postcode.dirty([super.value = '']) : super.dirty();

  static final RegExp _postcodeRegExp = RegExp(
    r'^\d+$',
  );
  static String? Function(String?) formValidator([
    final String? errorText = 'Invalid',
  ]) =>
      (final value) =>
          value != null && _postcodeRegExp.hasMatch(value) ? null : errorText;

  @override
  PostcodeValidationError? validator(final String value) {
    if (value.isEmpty) {
      return PostcodeValidationError.empty;
    }

    return _postcodeRegExp.hasMatch(value)
        ? null
        : PostcodeValidationError.invalid;
  }
}
