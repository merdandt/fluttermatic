import 'package:formz/formz.dart';

/// Email Form Input Validation Error
enum EmailValidationError {
  /// Email is invalid (generic validation error)
  invalid,

  /// Email is empty
  empty,
}

/// {@template email}
/// Reusable email form input.
/// {@endtemplate}
class Email extends FormzInput<String, EmailValidationError> {
  /// {@macro email}
  const Email.pure({this.isEmptyAllowed = false}) : super.pure('');

  /// {@macro email}
  const Email.dirty({this.isEmptyAllowed = false, final String value = ''})
      : super.dirty(value);

  final bool isEmptyAllowed;

  static final RegExp _emailRegExp = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  );

  @override
  EmailValidationError? validator(final String value) {
    if (value.isEmpty) {
      return isEmptyAllowed ? null : EmailValidationError.empty;
    }

    return _emailRegExp.hasMatch(value) ? null : EmailValidationError.invalid;
  }
}
