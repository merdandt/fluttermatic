import 'package:formz/formz.dart';

/// KabelTvInput Form Input Validation Error
enum KabelTvInputValidationError {
  /// KabelTvInput is invalid (generic validation error)
  invalid,

  /// KabelTvInput is empty
  empty,
}

/// {@template cart_number}
/// Reusable KabelTvInput form input.
/// {@endtemplate}
class KabelTvInput extends FormzInput<String, KabelTvInputValidationError> {
  /// {@macro cart_number}
  const KabelTvInput.pure() : super.pure('');

  /// {@macro cart_number}
  const KabelTvInput.dirty([super.value = '']) : super.dirty();

  static final RegExp _kabelTvInputRegExp = RegExp(
    r'^\d{1,5}$',
  );

  @override
  KabelTvInputValidationError? validator(final String value) {
    if (value.isEmpty) {
      return KabelTvInputValidationError.empty;
    }

    return _kabelTvInputRegExp.hasMatch(value)
        ? null
        : KabelTvInputValidationError.invalid;
  }
}
