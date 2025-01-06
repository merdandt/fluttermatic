import 'package:formz/formz.dart';

/// Name Form Input Validation Error
enum NameValidationError {
  /// Name is invalid (generic validation error)
  invalid,

  /// Name is empty
  empty,
}

/// {@template name}
/// Reusable name form input.
/// {@endtemplate}
class Name extends FormzInput<String, NameValidationError> {
  /// {@macro name}
  const Name.pure({this.isEmptyAllowed = false}) : super.pure('');

  /// {@macro name}
  const Name.dirty({this.isEmptyAllowed = false, final String value = ''})
      : super.dirty(value);

  final bool isEmptyAllowed;

  static final RegExp _nameRegExp = RegExp(r'^[A-Za-zňäžüşöçýŽÜŞÖÇÄŇÝ\s]+$');

  @override
  NameValidationError? validator(final String value) {
    if (value.isEmpty) {
      return isEmptyAllowed ? null : NameValidationError.empty;
    }

    return _nameRegExp.hasMatch(value) ? null : NameValidationError.invalid;
  }
}
