import 'package:formz/formz.dart';

/// CardCVC Form Input Validation Error
enum CardCVCValidationError {
  /// CardCVC is invalid (generic validation error)
  invalid,

  /// CardCVC is empty
  empty,
}

/// {@template cart_number}
/// Reusable CardCVC form input.
/// {@endtemplate}
class CardCVC extends FormzInput<String, CardCVCValidationError> {
  /// {@macro cart_number}
  const CardCVC.pure() : super.pure('');

  /// {@macro cart_number}
  const CardCVC.dirty([super.value = '']) : super.dirty();

  static final RegExp _cardCVCRegExp = RegExp(
    r'^\d{3}$',
  );

  @override
  CardCVCValidationError? validator(final String value) {
    if (value.isEmpty) {
      return CardCVCValidationError.empty;
    }

    return _cardCVCRegExp.hasMatch(value)
        ? null
        : CardCVCValidationError.invalid;
  }
}
