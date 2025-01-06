import 'package:formz/formz.dart';

/// CardExpiration Form Input Validation Error
enum CardExpirationberValidationError {
  /// CardExparation is invalid (generic validation error)
  invalid,

  /// CardExpiration is empty
  empty,
}

/// {@template cart_expiration}
/// Reusable CardExpiration form input.
/// {@endtemplate}
class CardExpiration
    extends FormzInput<String, CardExpirationberValidationError> {
  /// {@macro cart_expiration}
  const CardExpiration.pure() : super.pure('');

  /// {@macro cart_exparation}
  const CardExpiration.dirty([super.value = '']) : super.dirty();

  static final RegExp _cardExpiration = RegExp(
    r'^(0[1-9]|1[0-2])/(2[3-9]|[3-9]\d)$',
  );

  bool _validateExpirationDate(final String value) {
    final parts = value.split('/');
    if (parts.length != 2) {
      return false;
    }
    final month = int.tryParse(parts[0]) ?? 0;
    final year = int.tryParse(parts[1]) ?? 0;

    if (month < 1 || month > 12) {
      return false;
    }

    final DateTime now = DateTime.now();
    final int currentYear = now.year % 100;
    final int currentMonth = now.month;

    if (year < currentYear) {
      return false;
    } else if (year == currentYear && month < currentMonth) {
      return false;
    }

    return true;
  }

  @override
  CardExpirationberValidationError? validator(final String value) {
    if (value.isEmpty) {
      return CardExpirationberValidationError.empty;
    }

    return _cardExpiration.hasMatch(value) && _validateExpirationDate(value)
        ? null
        : CardExpirationberValidationError.invalid;
  }
}
