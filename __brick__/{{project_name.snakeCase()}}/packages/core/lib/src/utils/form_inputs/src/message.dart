import 'package:formz/formz.dart';

/// Message Form Input Validation Error
enum MessageValidationError {
  /// Message is invalid (generic validation error)
  invalid,

  /// Message is empty
  empty,
}

/// {@template surname}
/// Reusable Message form input.
/// {@endtemplate}
class Message extends FormzInput<String, MessageValidationError> {
  /// {@macro surname}
  const Message.pure() : super.pure('');

  /// {@macro surname}
  const Message.dirty([super.value = '']) : super.dirty();

  // static final RegExp _messageRegExp = RegExp(
  //   r'^[\w\s!@#$%^&*()_+,.:;<=>?[\\]^`{|}~]+$',
  // );

  @override
  MessageValidationError? validator(final String value) {
    if (value.isEmpty) {
      return MessageValidationError.empty;
    }

    return null;
    // return _messageRegExp.hasMatch(value)
    //     ? null
    //     : MessageValidationError.invalid;
  }
}
