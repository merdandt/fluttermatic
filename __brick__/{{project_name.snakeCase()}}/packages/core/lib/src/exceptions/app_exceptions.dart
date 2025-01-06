abstract class AppExceptions implements Exception {
  AppExceptions({required this.message, this.data});
  final String message;
  final Map<String, dynamic>? data;
}

final class UnauthorizedException extends AppExceptions {
  UnauthorizedException({
    required super.message,
    super.data,
  });
}

abstract class MessageInformingException extends AppExceptions {
  MessageInformingException({
    required super.message,
    super.data,
  });
}

abstract class ActionRequiredException extends AppExceptions {
  ActionRequiredException({
    required super.message,
    super.data,
  });
}

final class OtherException extends MessageInformingException {
  OtherException({
    required super.message,
    super.data,
  });
}


final class InternetConnectionException extends MessageInformingException {
  InternetConnectionException({
    required super.message,
    super.data,
  });
}

/// This type of Exception is used to indecate inner stae of the flow.
///
/// We do not need any message or data here.
abstract class SystemException extends AppExceptions {
  SystemException({
    super.data,
  }) : super(message: '');
}

final class RefreshTokenExpired extends SystemException {
  RefreshTokenExpired({super.data});
}

/// {@template storage_exception}
/// Exception thrown if a storage operation fails.
/// {@endtemplate}
abstract class StorageException implements Exception {
  /// {@macro storage_exception}
  const StorageException(this.error);

  /// Error thrown during the storage operation.
  final Object error;
}

class PersistentStorageException extends StorageException {
  /// {@macro persistent_storage_exception}
  const PersistentStorageException(super.error);
}

class SecureStorageException extends StorageException {
  /// {@macro temporary_storage_exception}
  const SecureStorageException(super.error);
}