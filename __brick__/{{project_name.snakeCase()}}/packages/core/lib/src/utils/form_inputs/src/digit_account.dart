import 'package:formz/formz.dart';

/// DigitAccount Form Input Validation Error
enum DigitAccountValidationError {
  /// DigitAccount is invalid (generic validation error)
  invalid,

  /// DigitAccount is empty
  empty,
}

/// {@template cart_number}
/// Reusable DigitAccount form input.
/// {@endtemplate}
class DigitAccount extends FormzInput<String, DigitAccountValidationError> {
  /// {@macro cart_number}
  const DigitAccount.pure({
    this.isEmptyAllowed = false,
  }) : super.pure('');

  /// {@macro cart_number}
  const DigitAccount.dirty({
    this.isEmptyAllowed = false,
    final String value = '',
  }) : super.dirty(value);

  static final RegExp _digitAccountRegExp = RegExp(
    r'^\d{1,10}$',
  );
  final bool isEmptyAllowed;

  @override
  DigitAccountValidationError? validator(final String value) {
    if (value.isEmpty) {
      return isEmptyAllowed ? null : DigitAccountValidationError.empty;
    }

    return _digitAccountRegExp.hasMatch(value)
        ? null
        : DigitAccountValidationError.invalid;
  }
}
