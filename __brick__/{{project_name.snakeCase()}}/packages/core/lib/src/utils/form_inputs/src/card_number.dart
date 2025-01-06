import 'package:formz/formz.dart';

/// CardNumber Form Input Validation Error
enum CardNumberValidationError {
  /// CardNumber is invalid (generic validation error)
  invalid,

  /// CardNumber is empty
  empty,
}

/// {@template cart_number}
/// Reusable CardNumber form input.
/// {@endtemplate}
class CardNumber extends FormzInput<String, CardNumberValidationError> {
  /// {@macro cart_number}
  const CardNumber.pure() : super.pure('');

  /// {@macro cart_number}
  const CardNumber.dirty([super.value = '']) : super.dirty();

  static final RegExp _cardNumberRegExp = RegExp(
    r'^\d{16}$',
  );

  bool _validateCardNumber(final String value) {
    final pureNum = value.replaceAll(' ', '');

    return _cardNumberRegExp.hasMatch(pureNum);
  }

  @override
  CardNumberValidationError? validator(final String value) {
    if (value.isEmpty) {
      return CardNumberValidationError.empty;
    }

    return _validateCardNumber(value)
        ? null
        : CardNumberValidationError.invalid;
  }
}
