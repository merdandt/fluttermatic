import 'package:formz/formz.dart';

/// Name Form Input Validation Error
enum CellPhoneNumValidationError {
  /// CellPhoneNum is invalid (generic validation error)
  invalid,

  /// CellPhoneNum is empty
  empty,
}

/// {@template phone_num}
/// Reusable CellPhoneNum form input.
/// {@endtemplate}
class CellPhoneNum extends FormzInput<String, CellPhoneNumValidationError> {
  /// {@macro phone_num}
  const CellPhoneNum.pure({this.isEmptyAllowed = false}) : super.pure('');

  /// {@macro phone_num}
  const CellPhoneNum.dirty({
    this.isEmptyAllowed = false,
    final String value = '',
  }) : super.dirty(value);

  final bool isEmptyAllowed;

  static final RegExp _phoneRegExp = RegExp(
    r'^(61|62|63|64|65|67|71) \d{6}$|^\d{8}$',
  );

  @override
  CellPhoneNumValidationError? validator(final String value) {
    if (value.isEmpty) {
      return isEmptyAllowed ? null : CellPhoneNumValidationError.empty;
    }
    final match = _phoneRegExp.hasMatch(value);

    return match ? null : CellPhoneNumValidationError.invalid;
  }
}
