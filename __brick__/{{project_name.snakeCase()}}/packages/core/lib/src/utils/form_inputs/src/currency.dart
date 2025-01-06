import 'package:formz/formz.dart';

/// Name Form Input Validation Error
enum CurrencyInputValidationError {
  /// CurrencyInput is invalid (generic validation error)
  invalid,

  /// CurrencyInput is empty
  empty,

  // In case we want to add a max value
  tooHigh
}

/// {@template currencyInput}
/// Reusable CurrencyInput form input.
/// {@endtemplate}
class CurrencyInput extends FormzInput<String, CurrencyInputValidationError> {
  /// {@macro currencyInput}
  const CurrencyInput.pure({this.maxValue})
      : super.pure(''); // Adjust the constructor accordingly

  /// {@macro CurrencyInput}
  const CurrencyInput.dirty([super.value = '', this.maxValue]) : super.dirty();
  final double? maxValue; // Adjust the constructor accordingly

  static final RegExp _currencyInputRegExp =
      RegExp(r'^\s*\$?(\d+(\.\d{0,2})?|\d{1,3}(,\d{3})*(\.\d{0,2})?)\s*$');

  @override
  CurrencyInputValidationError? validator(final String value) {
    if (value.isEmpty || value[0] == '0') {
      return CurrencyInputValidationError.empty;
    }

    if (maxValue != null) {
      final String numericalString = value.replaceAll(RegExp(r'[^\d.]'), '');
      final double? numericalValue = double.tryParse(numericalString);
      if (numericalValue != null && numericalValue > maxValue!) {
        return CurrencyInputValidationError.tooHigh;
      }
    }

    return _currencyInputRegExp.hasMatch(value)
        ? null
        : CurrencyInputValidationError.invalid;
  }
}
