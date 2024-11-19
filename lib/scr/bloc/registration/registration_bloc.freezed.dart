// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationEvent {
  String get phoneNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneSubmitted,
    required TResult Function(String phoneNumber, String login, String password,
            String secondPassword)
        loginPasswordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneSubmitted,
    TResult? Function(String phoneNumber, String login, String password,
            String secondPassword)?
        loginPasswordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneSubmitted,
    TResult Function(String phoneNumber, String login, String password,
            String secondPassword)?
        loginPasswordSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationPhoneSubmitted value) phoneSubmitted,
    required TResult Function(_RegistrationLoginPasswordSubmitted value)
        loginPasswordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationPhoneSubmitted value)? phoneSubmitted,
    TResult? Function(_RegistrationLoginPasswordSubmitted value)?
        loginPasswordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationPhoneSubmitted value)? phoneSubmitted,
    TResult Function(_RegistrationLoginPasswordSubmitted value)?
        loginPasswordSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationEventCopyWith<RegistrationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationPhoneSubmittedImplCopyWith<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  factory _$$RegistrationPhoneSubmittedImplCopyWith(
          _$RegistrationPhoneSubmittedImpl value,
          $Res Function(_$RegistrationPhoneSubmittedImpl) then) =
      __$$RegistrationPhoneSubmittedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$RegistrationPhoneSubmittedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res,
        _$RegistrationPhoneSubmittedImpl>
    implements _$$RegistrationPhoneSubmittedImplCopyWith<$Res> {
  __$$RegistrationPhoneSubmittedImplCopyWithImpl(
      _$RegistrationPhoneSubmittedImpl _value,
      $Res Function(_$RegistrationPhoneSubmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$RegistrationPhoneSubmittedImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationPhoneSubmittedImpl implements _RegistrationPhoneSubmitted {
  const _$RegistrationPhoneSubmittedImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegistrationEvent.phoneSubmitted(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationPhoneSubmittedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationPhoneSubmittedImplCopyWith<_$RegistrationPhoneSubmittedImpl>
      get copyWith => __$$RegistrationPhoneSubmittedImplCopyWithImpl<
          _$RegistrationPhoneSubmittedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneSubmitted,
    required TResult Function(String phoneNumber, String login, String password,
            String secondPassword)
        loginPasswordSubmitted,
  }) {
    return phoneSubmitted(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneSubmitted,
    TResult? Function(String phoneNumber, String login, String password,
            String secondPassword)?
        loginPasswordSubmitted,
  }) {
    return phoneSubmitted?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneSubmitted,
    TResult Function(String phoneNumber, String login, String password,
            String secondPassword)?
        loginPasswordSubmitted,
    required TResult orElse(),
  }) {
    if (phoneSubmitted != null) {
      return phoneSubmitted(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationPhoneSubmitted value) phoneSubmitted,
    required TResult Function(_RegistrationLoginPasswordSubmitted value)
        loginPasswordSubmitted,
  }) {
    return phoneSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationPhoneSubmitted value)? phoneSubmitted,
    TResult? Function(_RegistrationLoginPasswordSubmitted value)?
        loginPasswordSubmitted,
  }) {
    return phoneSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationPhoneSubmitted value)? phoneSubmitted,
    TResult Function(_RegistrationLoginPasswordSubmitted value)?
        loginPasswordSubmitted,
    required TResult orElse(),
  }) {
    if (phoneSubmitted != null) {
      return phoneSubmitted(this);
    }
    return orElse();
  }
}

abstract class _RegistrationPhoneSubmitted implements RegistrationEvent {
  const factory _RegistrationPhoneSubmitted(final String phoneNumber) =
      _$RegistrationPhoneSubmittedImpl;

  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationPhoneSubmittedImplCopyWith<_$RegistrationPhoneSubmittedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationLoginPasswordSubmittedImplCopyWith<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  factory _$$RegistrationLoginPasswordSubmittedImplCopyWith(
          _$RegistrationLoginPasswordSubmittedImpl value,
          $Res Function(_$RegistrationLoginPasswordSubmittedImpl) then) =
      __$$RegistrationLoginPasswordSubmittedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber,
      String login,
      String password,
      String secondPassword});
}

/// @nodoc
class __$$RegistrationLoginPasswordSubmittedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res,
        _$RegistrationLoginPasswordSubmittedImpl>
    implements _$$RegistrationLoginPasswordSubmittedImplCopyWith<$Res> {
  __$$RegistrationLoginPasswordSubmittedImplCopyWithImpl(
      _$RegistrationLoginPasswordSubmittedImpl _value,
      $Res Function(_$RegistrationLoginPasswordSubmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? login = null,
    Object? password = null,
    Object? secondPassword = null,
  }) {
    return _then(_$RegistrationLoginPasswordSubmittedImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      secondPassword: null == secondPassword
          ? _value.secondPassword
          : secondPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationLoginPasswordSubmittedImpl
    implements _RegistrationLoginPasswordSubmitted {
  const _$RegistrationLoginPasswordSubmittedImpl(
      {required this.phoneNumber,
      required this.login,
      required this.password,
      required this.secondPassword});

  @override
  final String phoneNumber;
  @override
  final String login;
  @override
  final String password;
  @override
  final String secondPassword;

  @override
  String toString() {
    return 'RegistrationEvent.loginPasswordSubmitted(phoneNumber: $phoneNumber, login: $login, password: $password, secondPassword: $secondPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationLoginPasswordSubmittedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.secondPassword, secondPassword) ||
                other.secondPassword == secondPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, login, password, secondPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationLoginPasswordSubmittedImplCopyWith<
          _$RegistrationLoginPasswordSubmittedImpl>
      get copyWith => __$$RegistrationLoginPasswordSubmittedImplCopyWithImpl<
          _$RegistrationLoginPasswordSubmittedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneSubmitted,
    required TResult Function(String phoneNumber, String login, String password,
            String secondPassword)
        loginPasswordSubmitted,
  }) {
    return loginPasswordSubmitted(phoneNumber, login, password, secondPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneSubmitted,
    TResult? Function(String phoneNumber, String login, String password,
            String secondPassword)?
        loginPasswordSubmitted,
  }) {
    return loginPasswordSubmitted?.call(
        phoneNumber, login, password, secondPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneSubmitted,
    TResult Function(String phoneNumber, String login, String password,
            String secondPassword)?
        loginPasswordSubmitted,
    required TResult orElse(),
  }) {
    if (loginPasswordSubmitted != null) {
      return loginPasswordSubmitted(
          phoneNumber, login, password, secondPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationPhoneSubmitted value) phoneSubmitted,
    required TResult Function(_RegistrationLoginPasswordSubmitted value)
        loginPasswordSubmitted,
  }) {
    return loginPasswordSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationPhoneSubmitted value)? phoneSubmitted,
    TResult? Function(_RegistrationLoginPasswordSubmitted value)?
        loginPasswordSubmitted,
  }) {
    return loginPasswordSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationPhoneSubmitted value)? phoneSubmitted,
    TResult Function(_RegistrationLoginPasswordSubmitted value)?
        loginPasswordSubmitted,
    required TResult orElse(),
  }) {
    if (loginPasswordSubmitted != null) {
      return loginPasswordSubmitted(this);
    }
    return orElse();
  }
}

abstract class _RegistrationLoginPasswordSubmitted
    implements RegistrationEvent {
  const factory _RegistrationLoginPasswordSubmitted(
          {required final String phoneNumber,
          required final String login,
          required final String password,
          required final String secondPassword}) =
      _$RegistrationLoginPasswordSubmittedImpl;

  @override
  String get phoneNumber;
  String get login;
  String get password;
  String get secondPassword;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationLoginPasswordSubmittedImplCopyWith<
          _$RegistrationLoginPasswordSubmittedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ErrorHandler error) error,
    required TResult Function(String phoneNumber) checkSuccess,
    required TResult Function() registrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ErrorHandler error)? error,
    TResult? Function(String phoneNumber)? checkSuccess,
    TResult? Function()? registrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ErrorHandler error)? error,
    TResult Function(String phoneNumber)? checkSuccess,
    TResult Function()? registrationSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationInProgress value) inProgress,
    required TResult Function(RegistrationError value) error,
    required TResult Function(RegistrationCheckSuccess value) checkSuccess,
    required TResult Function(RegistrationSuccess value) registrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationInProgress value)? inProgress,
    TResult? Function(RegistrationError value)? error,
    TResult? Function(RegistrationCheckSuccess value)? checkSuccess,
    TResult? Function(RegistrationSuccess value)? registrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationInProgress value)? inProgress,
    TResult Function(RegistrationError value)? error,
    TResult Function(RegistrationCheckSuccess value)? checkSuccess,
    TResult Function(RegistrationSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegistrationInitialImplCopyWith<$Res> {
  factory _$$RegistrationInitialImplCopyWith(_$RegistrationInitialImpl value,
          $Res Function(_$RegistrationInitialImpl) then) =
      __$$RegistrationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationInitialImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationInitialImpl>
    implements _$$RegistrationInitialImplCopyWith<$Res> {
  __$$RegistrationInitialImplCopyWithImpl(_$RegistrationInitialImpl _value,
      $Res Function(_$RegistrationInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationInitialImpl implements RegistrationInitial {
  const _$RegistrationInitialImpl();

  @override
  String toString() {
    return 'RegistrationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ErrorHandler error) error,
    required TResult Function(String phoneNumber) checkSuccess,
    required TResult Function() registrationSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ErrorHandler error)? error,
    TResult? Function(String phoneNumber)? checkSuccess,
    TResult? Function()? registrationSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ErrorHandler error)? error,
    TResult Function(String phoneNumber)? checkSuccess,
    TResult Function()? registrationSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationInProgress value) inProgress,
    required TResult Function(RegistrationError value) error,
    required TResult Function(RegistrationCheckSuccess value) checkSuccess,
    required TResult Function(RegistrationSuccess value) registrationSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationInProgress value)? inProgress,
    TResult? Function(RegistrationError value)? error,
    TResult? Function(RegistrationCheckSuccess value)? checkSuccess,
    TResult? Function(RegistrationSuccess value)? registrationSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationInProgress value)? inProgress,
    TResult Function(RegistrationError value)? error,
    TResult Function(RegistrationCheckSuccess value)? checkSuccess,
    TResult Function(RegistrationSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RegistrationInitial implements RegistrationState {
  const factory RegistrationInitial() = _$RegistrationInitialImpl;
}

/// @nodoc
abstract class _$$RegistrationInProgressImplCopyWith<$Res> {
  factory _$$RegistrationInProgressImplCopyWith(
          _$RegistrationInProgressImpl value,
          $Res Function(_$RegistrationInProgressImpl) then) =
      __$$RegistrationInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationInProgressImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationInProgressImpl>
    implements _$$RegistrationInProgressImplCopyWith<$Res> {
  __$$RegistrationInProgressImplCopyWithImpl(
      _$RegistrationInProgressImpl _value,
      $Res Function(_$RegistrationInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationInProgressImpl implements RegistrationInProgress {
  const _$RegistrationInProgressImpl();

  @override
  String toString() {
    return 'RegistrationState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ErrorHandler error) error,
    required TResult Function(String phoneNumber) checkSuccess,
    required TResult Function() registrationSuccess,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ErrorHandler error)? error,
    TResult? Function(String phoneNumber)? checkSuccess,
    TResult? Function()? registrationSuccess,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ErrorHandler error)? error,
    TResult Function(String phoneNumber)? checkSuccess,
    TResult Function()? registrationSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationInProgress value) inProgress,
    required TResult Function(RegistrationError value) error,
    required TResult Function(RegistrationCheckSuccess value) checkSuccess,
    required TResult Function(RegistrationSuccess value) registrationSuccess,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationInProgress value)? inProgress,
    TResult? Function(RegistrationError value)? error,
    TResult? Function(RegistrationCheckSuccess value)? checkSuccess,
    TResult? Function(RegistrationSuccess value)? registrationSuccess,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationInProgress value)? inProgress,
    TResult Function(RegistrationError value)? error,
    TResult Function(RegistrationCheckSuccess value)? checkSuccess,
    TResult Function(RegistrationSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class RegistrationInProgress implements RegistrationState {
  const factory RegistrationInProgress() = _$RegistrationInProgressImpl;
}

/// @nodoc
abstract class _$$RegistrationErrorImplCopyWith<$Res> {
  factory _$$RegistrationErrorImplCopyWith(_$RegistrationErrorImpl value,
          $Res Function(_$RegistrationErrorImpl) then) =
      __$$RegistrationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler error});
}

/// @nodoc
class __$$RegistrationErrorImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationErrorImpl>
    implements _$$RegistrationErrorImplCopyWith<$Res> {
  __$$RegistrationErrorImplCopyWithImpl(_$RegistrationErrorImpl _value,
      $Res Function(_$RegistrationErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RegistrationErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$RegistrationErrorImpl implements RegistrationError {
  const _$RegistrationErrorImpl(this.error);

  @override
  final ErrorHandler error;

  @override
  String toString() {
    return 'RegistrationState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationErrorImplCopyWith<_$RegistrationErrorImpl> get copyWith =>
      __$$RegistrationErrorImplCopyWithImpl<_$RegistrationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ErrorHandler error) error,
    required TResult Function(String phoneNumber) checkSuccess,
    required TResult Function() registrationSuccess,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ErrorHandler error)? error,
    TResult? Function(String phoneNumber)? checkSuccess,
    TResult? Function()? registrationSuccess,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ErrorHandler error)? error,
    TResult Function(String phoneNumber)? checkSuccess,
    TResult Function()? registrationSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationInProgress value) inProgress,
    required TResult Function(RegistrationError value) error,
    required TResult Function(RegistrationCheckSuccess value) checkSuccess,
    required TResult Function(RegistrationSuccess value) registrationSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationInProgress value)? inProgress,
    TResult? Function(RegistrationError value)? error,
    TResult? Function(RegistrationCheckSuccess value)? checkSuccess,
    TResult? Function(RegistrationSuccess value)? registrationSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationInProgress value)? inProgress,
    TResult Function(RegistrationError value)? error,
    TResult Function(RegistrationCheckSuccess value)? checkSuccess,
    TResult Function(RegistrationSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegistrationError implements RegistrationState {
  const factory RegistrationError(final ErrorHandler error) =
      _$RegistrationErrorImpl;

  ErrorHandler get error;
  @JsonKey(ignore: true)
  _$$RegistrationErrorImplCopyWith<_$RegistrationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationCheckSuccessImplCopyWith<$Res> {
  factory _$$RegistrationCheckSuccessImplCopyWith(
          _$RegistrationCheckSuccessImpl value,
          $Res Function(_$RegistrationCheckSuccessImpl) then) =
      __$$RegistrationCheckSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$RegistrationCheckSuccessImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res,
        _$RegistrationCheckSuccessImpl>
    implements _$$RegistrationCheckSuccessImplCopyWith<$Res> {
  __$$RegistrationCheckSuccessImplCopyWithImpl(
      _$RegistrationCheckSuccessImpl _value,
      $Res Function(_$RegistrationCheckSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$RegistrationCheckSuccessImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationCheckSuccessImpl implements RegistrationCheckSuccess {
  const _$RegistrationCheckSuccessImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegistrationState.checkSuccess(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationCheckSuccessImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationCheckSuccessImplCopyWith<_$RegistrationCheckSuccessImpl>
      get copyWith => __$$RegistrationCheckSuccessImplCopyWithImpl<
          _$RegistrationCheckSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ErrorHandler error) error,
    required TResult Function(String phoneNumber) checkSuccess,
    required TResult Function() registrationSuccess,
  }) {
    return checkSuccess(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ErrorHandler error)? error,
    TResult? Function(String phoneNumber)? checkSuccess,
    TResult? Function()? registrationSuccess,
  }) {
    return checkSuccess?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ErrorHandler error)? error,
    TResult Function(String phoneNumber)? checkSuccess,
    TResult Function()? registrationSuccess,
    required TResult orElse(),
  }) {
    if (checkSuccess != null) {
      return checkSuccess(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationInProgress value) inProgress,
    required TResult Function(RegistrationError value) error,
    required TResult Function(RegistrationCheckSuccess value) checkSuccess,
    required TResult Function(RegistrationSuccess value) registrationSuccess,
  }) {
    return checkSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationInProgress value)? inProgress,
    TResult? Function(RegistrationError value)? error,
    TResult? Function(RegistrationCheckSuccess value)? checkSuccess,
    TResult? Function(RegistrationSuccess value)? registrationSuccess,
  }) {
    return checkSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationInProgress value)? inProgress,
    TResult Function(RegistrationError value)? error,
    TResult Function(RegistrationCheckSuccess value)? checkSuccess,
    TResult Function(RegistrationSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (checkSuccess != null) {
      return checkSuccess(this);
    }
    return orElse();
  }
}

abstract class RegistrationCheckSuccess implements RegistrationState {
  const factory RegistrationCheckSuccess(final String phoneNumber) =
      _$RegistrationCheckSuccessImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$RegistrationCheckSuccessImplCopyWith<_$RegistrationCheckSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationSuccessImplCopyWith<$Res> {
  factory _$$RegistrationSuccessImplCopyWith(_$RegistrationSuccessImpl value,
          $Res Function(_$RegistrationSuccessImpl) then) =
      __$$RegistrationSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationSuccessImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationSuccessImpl>
    implements _$$RegistrationSuccessImplCopyWith<$Res> {
  __$$RegistrationSuccessImplCopyWithImpl(_$RegistrationSuccessImpl _value,
      $Res Function(_$RegistrationSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationSuccessImpl implements RegistrationSuccess {
  const _$RegistrationSuccessImpl();

  @override
  String toString() {
    return 'RegistrationState.registrationSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ErrorHandler error) error,
    required TResult Function(String phoneNumber) checkSuccess,
    required TResult Function() registrationSuccess,
  }) {
    return registrationSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ErrorHandler error)? error,
    TResult? Function(String phoneNumber)? checkSuccess,
    TResult? Function()? registrationSuccess,
  }) {
    return registrationSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ErrorHandler error)? error,
    TResult Function(String phoneNumber)? checkSuccess,
    TResult Function()? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationSuccess != null) {
      return registrationSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationInProgress value) inProgress,
    required TResult Function(RegistrationError value) error,
    required TResult Function(RegistrationCheckSuccess value) checkSuccess,
    required TResult Function(RegistrationSuccess value) registrationSuccess,
  }) {
    return registrationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationInProgress value)? inProgress,
    TResult? Function(RegistrationError value)? error,
    TResult? Function(RegistrationCheckSuccess value)? checkSuccess,
    TResult? Function(RegistrationSuccess value)? registrationSuccess,
  }) {
    return registrationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationInProgress value)? inProgress,
    TResult Function(RegistrationError value)? error,
    TResult Function(RegistrationCheckSuccess value)? checkSuccess,
    TResult Function(RegistrationSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationSuccess != null) {
      return registrationSuccess(this);
    }
    return orElse();
  }
}

abstract class RegistrationSuccess implements RegistrationState {
  const factory RegistrationSuccess() = _$RegistrationSuccessImpl;
}
