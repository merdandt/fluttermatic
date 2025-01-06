import 'package:formz/formz.dart';

/// FineInspectorInput Form Input Validation Error
enum FineInspectorInputValidationError {
  /// FineInspectorInput is invalid (generic validation error)
  invalid,

  /// FineInspectorInput is empty
  empty,
}

/// {@template cart_number}
/// Reusable FineInspectorInput form input.
/// {@endtemplate}
class FineInspectorInput
    extends FormzInput<String, FineInspectorInputValidationError> {
  /// {@macro cart_number}
  const FineInspectorInput.pure() : super.pure('');

  /// {@macro cart_number}
  const FineInspectorInput.dirty([super.value = '']) : super.dirty();

  static final RegExp _fineInspectorInputRegExp = RegExp(
    r'^\d{1,7}$',
  );

  @override
  FineInspectorInputValidationError? validator(final String value) {
    if (value.isEmpty) {
      return FineInspectorInputValidationError.empty;
    }

    return _fineInspectorInputRegExp.hasMatch(value)
        ? null
        : FineInspectorInputValidationError.invalid;
  }
}
