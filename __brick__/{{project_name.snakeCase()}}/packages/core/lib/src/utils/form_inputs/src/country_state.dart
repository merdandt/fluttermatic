import 'package:formz/formz.dart';

/// State Form Input Validation Error
enum CountryStateValidationError {
  /// State is invalid (generic validation error)
  invalid,

  /// State is empty
  empty,
}

/// {@template state}
/// Reusable State form input.
/// {@endtemplate}
class CountryState extends FormzInput<String, CountryStateValidationError> {
  /// {@macro state}
  const CountryState.pure() : super.pure('');

  /// {@macro state}
  const CountryState.dirty([super.value = '']) : super.dirty();

  // static final RegExp _nameRegExp = RegExp(
  //   r"^[a-zA-Z-' ]+$",
  // );

  @override
  CountryStateValidationError? validator(final String value) {
    if (value.isEmpty) {
      return CountryStateValidationError.empty;
    }

    return null;
    // return _nameRegExp.hasMatch(value) ? null : StateValidationError.invalid;
  }
}
