// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_service_errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationServiceError {
  Object? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error) notificationTokenRefreshError,
    required TResult Function(Object? error) notificationInitializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error)? notificationTokenRefreshError,
    TResult? Function(Object? error)? notificationInitializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error)? notificationTokenRefreshError,
    TResult Function(Object? error)? notificationInitializationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationTokenRefreshError value)
        notificationTokenRefreshError,
    required TResult Function(NotificationInitializationError value)
        notificationInitializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationTokenRefreshError value)?
        notificationTokenRefreshError,
    TResult? Function(NotificationInitializationError value)?
        notificationInitializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationTokenRefreshError value)?
        notificationTokenRefreshError,
    TResult Function(NotificationInitializationError value)?
        notificationInitializationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationServiceErrorCopyWith<NotificationServiceError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationServiceErrorCopyWith<$Res> {
  factory $NotificationServiceErrorCopyWith(NotificationServiceError value,
          $Res Function(NotificationServiceError) then) =
      _$NotificationServiceErrorCopyWithImpl<$Res, NotificationServiceError>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class _$NotificationServiceErrorCopyWithImpl<$Res,
        $Val extends NotificationServiceError>
    implements $NotificationServiceErrorCopyWith<$Res> {
  _$NotificationServiceErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationTokenRefreshErrorImplCopyWith<$Res>
    implements $NotificationServiceErrorCopyWith<$Res> {
  factory _$$NotificationTokenRefreshErrorImplCopyWith(
          _$NotificationTokenRefreshErrorImpl value,
          $Res Function(_$NotificationTokenRefreshErrorImpl) then) =
      __$$NotificationTokenRefreshErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$NotificationTokenRefreshErrorImplCopyWithImpl<$Res>
    extends _$NotificationServiceErrorCopyWithImpl<$Res,
        _$NotificationTokenRefreshErrorImpl>
    implements _$$NotificationTokenRefreshErrorImplCopyWith<$Res> {
  __$$NotificationTokenRefreshErrorImplCopyWithImpl(
      _$NotificationTokenRefreshErrorImpl _value,
      $Res Function(_$NotificationTokenRefreshErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$NotificationTokenRefreshErrorImpl(
      freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$NotificationTokenRefreshErrorImpl
    implements NotificationTokenRefreshError {
  _$NotificationTokenRefreshErrorImpl([this.error]);

  @override
  final Object? error;

  @override
  String toString() {
    return 'NotificationServiceError.notificationTokenRefreshError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationTokenRefreshErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationTokenRefreshErrorImplCopyWith<
          _$NotificationTokenRefreshErrorImpl>
      get copyWith => __$$NotificationTokenRefreshErrorImplCopyWithImpl<
          _$NotificationTokenRefreshErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error) notificationTokenRefreshError,
    required TResult Function(Object? error) notificationInitializationError,
  }) {
    return notificationTokenRefreshError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error)? notificationTokenRefreshError,
    TResult? Function(Object? error)? notificationInitializationError,
  }) {
    return notificationTokenRefreshError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error)? notificationTokenRefreshError,
    TResult Function(Object? error)? notificationInitializationError,
    required TResult orElse(),
  }) {
    if (notificationTokenRefreshError != null) {
      return notificationTokenRefreshError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationTokenRefreshError value)
        notificationTokenRefreshError,
    required TResult Function(NotificationInitializationError value)
        notificationInitializationError,
  }) {
    return notificationTokenRefreshError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationTokenRefreshError value)?
        notificationTokenRefreshError,
    TResult? Function(NotificationInitializationError value)?
        notificationInitializationError,
  }) {
    return notificationTokenRefreshError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationTokenRefreshError value)?
        notificationTokenRefreshError,
    TResult Function(NotificationInitializationError value)?
        notificationInitializationError,
    required TResult orElse(),
  }) {
    if (notificationTokenRefreshError != null) {
      return notificationTokenRefreshError(this);
    }
    return orElse();
  }
}

abstract class NotificationTokenRefreshError
    implements NotificationServiceError {
  factory NotificationTokenRefreshError([final Object? error]) =
      _$NotificationTokenRefreshErrorImpl;

  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$NotificationTokenRefreshErrorImplCopyWith<
          _$NotificationTokenRefreshErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationInitializationErrorImplCopyWith<$Res>
    implements $NotificationServiceErrorCopyWith<$Res> {
  factory _$$NotificationInitializationErrorImplCopyWith(
          _$NotificationInitializationErrorImpl value,
          $Res Function(_$NotificationInitializationErrorImpl) then) =
      __$$NotificationInitializationErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$NotificationInitializationErrorImplCopyWithImpl<$Res>
    extends _$NotificationServiceErrorCopyWithImpl<$Res,
        _$NotificationInitializationErrorImpl>
    implements _$$NotificationInitializationErrorImplCopyWith<$Res> {
  __$$NotificationInitializationErrorImplCopyWithImpl(
      _$NotificationInitializationErrorImpl _value,
      $Res Function(_$NotificationInitializationErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$NotificationInitializationErrorImpl(
      freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$NotificationInitializationErrorImpl
    implements NotificationInitializationError {
  _$NotificationInitializationErrorImpl([this.error]);

  @override
  final Object? error;

  @override
  String toString() {
    return 'NotificationServiceError.notificationInitializationError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationInitializationErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationInitializationErrorImplCopyWith<
          _$NotificationInitializationErrorImpl>
      get copyWith => __$$NotificationInitializationErrorImplCopyWithImpl<
          _$NotificationInitializationErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error) notificationTokenRefreshError,
    required TResult Function(Object? error) notificationInitializationError,
  }) {
    return notificationInitializationError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error)? notificationTokenRefreshError,
    TResult? Function(Object? error)? notificationInitializationError,
  }) {
    return notificationInitializationError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error)? notificationTokenRefreshError,
    TResult Function(Object? error)? notificationInitializationError,
    required TResult orElse(),
  }) {
    if (notificationInitializationError != null) {
      return notificationInitializationError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationTokenRefreshError value)
        notificationTokenRefreshError,
    required TResult Function(NotificationInitializationError value)
        notificationInitializationError,
  }) {
    return notificationInitializationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationTokenRefreshError value)?
        notificationTokenRefreshError,
    TResult? Function(NotificationInitializationError value)?
        notificationInitializationError,
  }) {
    return notificationInitializationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationTokenRefreshError value)?
        notificationTokenRefreshError,
    TResult Function(NotificationInitializationError value)?
        notificationInitializationError,
    required TResult orElse(),
  }) {
    if (notificationInitializationError != null) {
      return notificationInitializationError(this);
    }
    return orElse();
  }
}

abstract class NotificationInitializationError
    implements NotificationServiceError {
  factory NotificationInitializationError([final Object? error]) =
      _$NotificationInitializationErrorImpl;

  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$NotificationInitializationErrorImplCopyWith<
          _$NotificationInitializationErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
