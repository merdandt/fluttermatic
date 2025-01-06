import 'package:formz/formz.dart';

/// Fine Form Input Validation Error
enum FineVideoValidationError {
  /// Fine is invalid (generic validation error)
  invalid,

  /// Fine is empty
  empty,
}

/// {@template fine_input}
/// Reusable Fine form input.
/// {@endtemplate}
class FineVideoInput extends FormzInput<String, FineVideoValidationError> {
  /// {@macro fineVideo_input}
  const FineVideoInput.pure({required this.currentYear}) : super.pure('');

  /// {@macro fineVideo_input}
  const FineVideoInput.dirty({
    required this.currentYear,
    final String value = '',
  }) : super.dirty(value);

  static final RegExp _fineVideoPattern = RegExp(
    r'^(1[1-9]|2[0-9]|30)/[A-Za-z\s]{2,3}\d{5,7}$',
  );

  final String currentYear;

  @override
  FineVideoValidationError? validator(final String value) {
    if (value.isEmpty) {
      return FineVideoValidationError.empty;
    }

    return _fineVideoPattern.hasMatch(value)
        ? null
        : FineVideoValidationError.invalid;
  }
}
