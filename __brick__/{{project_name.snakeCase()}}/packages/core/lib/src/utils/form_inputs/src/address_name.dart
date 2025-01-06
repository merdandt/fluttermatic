import 'package:formz/formz.dart';

/// AddressName Form Input Validation Error
enum AddressNameValidationError {
  /// AddressName is invalid (generic validation error)
  invalid,

  /// Name is empty
  empty,
}

/// {@template name}
/// Reusable AddressName form input.
/// {@endtemplate}
class AddressName extends FormzInput<String, AddressNameValidationError> {
  /// {@macro name}
  const AddressName.pure() : super.pure('');

  /// {@macro name}
  const AddressName.dirty([super.value = '']) : super.dirty();

  static final RegExp _nameRegExp = RegExp(r'^\s*([A-Za-z]+)\s*$');

  @override
  AddressNameValidationError? validator(final String value) {
    if (value.isEmpty) {
      return AddressNameValidationError.empty;
    }

    return _nameRegExp.hasMatch(value)
        ? null
        : AddressNameValidationError.invalid;
  }
}
