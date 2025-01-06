import 'package:core/core.dart';


final class ToggleEmailNotificationsFailure extends AppExceptions {
  ToggleEmailNotificationsFailure({
    required super.message,
    super.data,
  });
}

final class FetchNotificationsEnabledFailure extends AppExceptions {
  FetchNotificationsEnabledFailure({
    required super.message,
    super.data,
  });
}

final class CreateFCMTokenFailure extends AppExceptions {
  CreateFCMTokenFailure({
    required super.message,
    super.data,
  });
}

final class GetUserNotificationFailure extends AppExceptions {
  GetUserNotificationFailure({
    required super.message,
    super.data,
  });
}

final class TrackEventFailure extends AppExceptions {
  TrackEventFailure({
    required super.message,
    super.data,
  });
}

final class SetUserIdFailure extends AppExceptions {
  SetUserIdFailure({
    required super.message,
    super.data,
  });
}
