import 'package:formz/formz.dart';

/// DateInput Form Input Validation Error
enum DateInputValidationError {
  /// DateInput is invalid (generic validation error)
  invalid,

  /// DateInput is empty
  empty,
}

/// {@template cart_number}
/// Reusable DateInput form input.
/// {@endtemplate}
class DateInput extends FormzInput<String, DateInputValidationError> {
  /// {@macro cart_number}
  const DateInput.pure() : super.pure('');

  /// {@macro cart_number}
  const DateInput.dirty([super.value = '']) : super.dirty();

  static final RegExp _dateInputRegExp = RegExp(
    r'^\d{2}\.\d{2}\.\d{4}$',
  );

  @override
  DateInputValidationError? validator(final String value) {
    if (value.isEmpty) {
      return DateInputValidationError.empty;
    }

    return _dateInputRegExp.hasMatch(value)
        ? null
        : DateInputValidationError.invalid;
  }
}
