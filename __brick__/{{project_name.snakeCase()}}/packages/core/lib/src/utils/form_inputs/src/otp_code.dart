import 'package:formz/formz.dart';

/// Name Form Input Validation Error
enum OtpInputValidationError {
  /// OtpInput is invalid (generic validation error)
  invalid,

  /// OtpInput is empty
  empty,

  // In case we want to add a max value
  tooShort,

  // In case we want to add a min value
  tooLong,
}

/// {@template OtpInput}
/// Reusable OtpInput form input.
/// {@endtemplate}
class OtpInput extends FormzInput<String, OtpInputValidationError> {
  /// {@macro OtpInput}
  const OtpInput.pure({this.maxValue})
      : super.pure(''); // Adjust the constructor accordingly

  /// {@macro OtpInput}
  const OtpInput.dirty([super.value = '', this.maxValue]) : super.dirty();
  final int? maxValue; // Adjust the constructor accordingly

  static final RegExp _currencyInputRegExp = RegExp(r'^\s*\$?(\d+)\s*$');

  @override
  OtpInputValidationError? validator(final String value) {
    if (value.isEmpty) {
      return OtpInputValidationError.empty;
    }

    if (maxValue != null && value.length < maxValue!) {
      return OtpInputValidationError.tooShort;
    }

    if (maxValue != null && value.length > maxValue!) {
      return OtpInputValidationError.tooLong;
    }

    return _currencyInputRegExp.hasMatch(value)
        ? null
        : OtpInputValidationError.invalid;
  }
}
