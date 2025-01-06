import 'package:formz/formz.dart';

/// Surname Form Input Validation Error
enum SurnameValidationError {
  /// Surname is invalid (generic validation error)
  invalid,

  /// Surname is empty
  empty,

  /// Name is too long
  tooLong,
}

/// {@template surname}
/// Reusable Surname form input.
/// {@endtemplate}
class Surname extends FormzInput<String, SurnameValidationError> {
  /// {@macro surname}
  const Surname.pure({this.isEmptyAllowed = false}) : super.pure('');

  /// {@macro surname}
  const Surname.dirty({this.isEmptyAllowed = false, final String value = ''})
      : super.dirty(value);

  final bool isEmptyAllowed;

  static final RegExp _surnameRegExp = RegExp(r'^[A-Za-zňäžüşöçýŽÜŞÖÇÄŇÝ\s]+$');

  @override
  SurnameValidationError? validator(final String value) {
    if (value.isEmpty) {
      return isEmptyAllowed ? null : SurnameValidationError.empty;
    }

    if (value.length >= 25) {
      return SurnameValidationError.tooLong;
    }

    return _surnameRegExp.hasMatch(value)
        ? null
        : SurnameValidationError.invalid;
  }
}
