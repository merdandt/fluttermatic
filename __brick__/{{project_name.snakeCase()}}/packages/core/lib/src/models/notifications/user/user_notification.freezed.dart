// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserNotification _$UserNotificationFromJson(Map<String, dynamic> json) {
  return _UserNotification.fromJson(json);
}

/// @nodoc
mixin _$UserNotification {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_time')
  DateTime get dateTime => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserNotificationCopyWith<UserNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNotificationCopyWith<$Res> {
  factory $UserNotificationCopyWith(
          UserNotification value, $Res Function(UserNotification) then) =
      _$UserNotificationCopyWithImpl<$Res, UserNotification>;
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      @JsonKey(name: 'date_time') DateTime dateTime,
      bool read});
}

/// @nodoc
class _$UserNotificationCopyWithImpl<$Res, $Val extends UserNotification>
    implements $UserNotificationCopyWith<$Res> {
  _$UserNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? dateTime = null,
    Object? read = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserNotificationImplCopyWith<$Res>
    implements $UserNotificationCopyWith<$Res> {
  factory _$$UserNotificationImplCopyWith(_$UserNotificationImpl value,
          $Res Function(_$UserNotificationImpl) then) =
      __$$UserNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      @JsonKey(name: 'date_time') DateTime dateTime,
      bool read});
}

/// @nodoc
class __$$UserNotificationImplCopyWithImpl<$Res>
    extends _$UserNotificationCopyWithImpl<$Res, _$UserNotificationImpl>
    implements _$$UserNotificationImplCopyWith<$Res> {
  __$$UserNotificationImplCopyWithImpl(_$UserNotificationImpl _value,
      $Res Function(_$UserNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? dateTime = null,
    Object? read = null,
  }) {
    return _then(_$UserNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserNotificationImpl implements _UserNotification {
  _$UserNotificationImpl(
      {required this.id,
      required this.title,
      required this.body,
      @JsonKey(name: 'date_time') required this.dateTime,
      required this.read});

  factory _$UserNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserNotificationImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  @override
  @JsonKey(name: 'date_time')
  final DateTime dateTime;
  @override
  final bool read;

  @override
  String toString() {
    return 'UserNotification(id: $id, title: $title, body: $body, dateTime: $dateTime, read: $read)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.read, read) || other.read == read));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, body, dateTime, read);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNotificationImplCopyWith<_$UserNotificationImpl> get copyWith =>
      __$$UserNotificationImplCopyWithImpl<_$UserNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserNotificationImplToJson(
      this,
    );
  }
}

abstract class _UserNotification implements UserNotification {
  factory _UserNotification(
      {required final String id,
      required final String title,
      required final String body,
      @JsonKey(name: 'date_time') required final DateTime dateTime,
      required final bool read}) = _$UserNotificationImpl;

  factory _UserNotification.fromJson(Map<String, dynamic> json) =
      _$UserNotificationImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(name: 'date_time')
  DateTime get dateTime;
  @override
  bool get read;
  @override
  @JsonKey(ignore: true)
  _$$UserNotificationImplCopyWith<_$UserNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
