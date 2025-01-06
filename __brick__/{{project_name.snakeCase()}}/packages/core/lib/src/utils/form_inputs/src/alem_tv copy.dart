import 'package:formz/formz.dart';

/// AlemTvInput Form Input Validation Error
enum AlemTvInputValidationError {
  /// AlemTvInput is invalid (generic validation error)
  invalid,

  /// AlemTvInput is empty
  empty,
}

/// {@template cart_number}
/// Reusable AlemTvInput form input.
/// {@endtemplate}
class AlemTvInput extends FormzInput<String, AlemTvInputValidationError> {
  /// {@macro cart_number}
  const AlemTvInput.pure() : super.pure('');

  /// {@macro cart_number}
  const AlemTvInput.dirty([super.value = '']) : super.dirty();

  static final RegExp _alemTvInputRegExp = RegExp(
    r'^\d{10}$',
  );

  @override
  AlemTvInputValidationError? validator(final String value) {
    if (value.isEmpty) {
      return AlemTvInputValidationError.empty;
    }

    return _alemTvInputRegExp.hasMatch(value)
        ? null
        : AlemTvInputValidationError.invalid;
  }
}
