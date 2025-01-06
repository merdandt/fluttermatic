import 'package:formz/formz.dart';

/// AddressLine Form Input Validation Error
enum AddressLineValidationError {
  /// AddressLine is invalid (generic validation error)
  invalid,

  /// AddressLine is empty
  empty,
}

/// {@template state}
/// Reusable AddressLine form input.
/// {@endtemplate}
class AddressLine extends FormzInput<String, AddressLineValidationError> {
  /// {@macro state}
  const AddressLine.pure({this.isEmptyAllowed = false}) : super.pure('');

  /// {@macro state}
  const AddressLine.dirty({
    this.isEmptyAllowed = false,
    final String value = '',
  }) : super.dirty(value);

  final bool isEmptyAllowed;

  // static final RegExp _addressRegExp = RegExp(
  //   r'^[a-zA-Z0-9!@#$%^&*()_+,.:;<=>?[\\]^`{|}~]*$',
  // );

  @override
  AddressLineValidationError? validator(final String value) {
    if (value.isEmpty) {
      return isEmptyAllowed ? null : AddressLineValidationError.empty;
    }

    return null;
    // return _addressRegExp.hasMatch(value)
    //     ? null
    //     : AddressLineValidationError.invalid;
  }
}
