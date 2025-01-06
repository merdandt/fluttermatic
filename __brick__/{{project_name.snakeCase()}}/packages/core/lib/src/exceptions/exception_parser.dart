// * errorType is a string that can be one of the following:

import 'package:core/core.dart';

AppExceptions exceptionParser(final dynamic data) {
  if (data is! Map<String, dynamic>) {
    return OtherException(message: '');
  }
  final dataMap = data;

  if (dataMap['error'] is! String) {
    return OtherException(message: '', data: data);
  }
  final errorType = dataMap['error'] as String;
  final message = data['message']?.toString() ?? '';
  final payload = data['data'];

  final type = ExceptionTypes.values.firstWhere(
    (final element) => element.name == errorType,
    orElse: () => ExceptionTypes.OTHER,
  );

  return switch (type) {
    ExceptionTypes.OTHER => OtherException(
        message: message,
      ),
   
    _ => OtherException(message: message, data: payload),
  };
}