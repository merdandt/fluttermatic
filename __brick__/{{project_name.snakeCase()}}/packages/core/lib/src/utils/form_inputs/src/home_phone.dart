import 'package:formz/formz.dart';

enum HomePhoneType {
  ashgabat,
  welayat,
  unknown,
}

/// Name Form Input Validation Error
enum HomePhoneNumValidationError {
  /// HomePhoneNum is invalid (generic validation error)
  invalid,

  /// HomePhoneNum is empty
  empty,
}

/// {@template phone_num}
/// Reusable HomePhoneNum form input.
/// {@endtemplate}
class HomePhoneNum extends FormzInput<String, HomePhoneNumValidationError> {
  /// {@macro phone_num}
  const HomePhoneNum.pure({
    this.isEmptyAllowed = false,
    this.type = HomePhoneType.unknown,
  }) : super.pure(''); // Adjust the constructor accordingly

  /// {@macro phone_num}
  const HomePhoneNum.dirty({
    this.type = HomePhoneType.unknown,
    this.isEmptyAllowed = false,
    final String value = '',
  }) : super.dirty(value);

  final bool isEmptyAllowed;
  final HomePhoneType type;

  @override
  HomePhoneNumValidationError? validator(final String value) {
    if (value.isEmpty) {
      return isEmptyAllowed ? null : HomePhoneNumValidationError.empty;
    }
    final RegExp phoneRegExp = RegExp(
      switch (type) {
        HomePhoneType.ashgabat => r'^\d{6}$',
        HomePhoneType.welayat => r'^\d{3} \d{5}$|^\d{8}$',
        HomePhoneType.unknown => r'^\d{8}$',
      },
    );

    return phoneRegExp.hasMatch(value)
        ? null
        : HomePhoneNumValidationError.invalid;
  }
}
