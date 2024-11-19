// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpEvent {
  String get phoneNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, String phoneNumber)
        submittedRegistration,
    required TResult Function(String otp, String phoneNumber) submittedLogin,
    required TResult Function(String phoneNumber, int state) otpResendRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, String phoneNumber)? submittedRegistration,
    TResult? Function(String otp, String phoneNumber)? submittedLogin,
    TResult? Function(String phoneNumber, int state)? otpResendRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, String phoneNumber)? submittedRegistration,
    TResult Function(String otp, String phoneNumber)? submittedLogin,
    TResult Function(String phoneNumber, int state)? otpResendRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpSubmittedRegistration value)
        submittedRegistration,
    required TResult Function(_OtpSubmittedLogin value) submittedLogin,
    required TResult Function(_OtpResendRequested value) otpResendRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpSubmittedRegistration value)? submittedRegistration,
    TResult? Function(_OtpSubmittedLogin value)? submittedLogin,
    TResult? Function(_OtpResendRequested value)? otpResendRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpSubmittedRegistration value)? submittedRegistration,
    TResult Function(_OtpSubmittedLogin value)? submittedLogin,
    TResult Function(_OtpResendRequested value)? otpResendRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpEventCopyWith<OtpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpEventCopyWith<$Res> {
  factory $OtpEventCopyWith(OtpEvent value, $Res Function(OtpEvent) then) =
      _$OtpEventCopyWithImpl<$Res, OtpEvent>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$OtpEventCopyWithImpl<$Res, $Val extends OtpEvent>
    implements $OtpEventCopyWith<$Res> {
  _$OtpEventCopyWithImpl(this._value, this._then);

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
abstract class _$$OtpSubmittedRegistrationImplCopyWith<$Res>
    implements $OtpEventCopyWith<$Res> {
  factory _$$OtpSubmittedRegistrationImplCopyWith(
          _$OtpSubmittedRegistrationImpl value,
          $Res Function(_$OtpSubmittedRegistrationImpl) then) =
      __$$OtpSubmittedRegistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, String phoneNumber});
}

/// @nodoc
class __$$OtpSubmittedRegistrationImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$OtpSubmittedRegistrationImpl>
    implements _$$OtpSubmittedRegistrationImplCopyWith<$Res> {
  __$$OtpSubmittedRegistrationImplCopyWithImpl(
      _$OtpSubmittedRegistrationImpl _value,
      $Res Function(_$OtpSubmittedRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$OtpSubmittedRegistrationImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpSubmittedRegistrationImpl implements _OtpSubmittedRegistration {
  const _$OtpSubmittedRegistrationImpl(
      {required this.otp, required this.phoneNumber});

  @override
  final String otp;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'OtpEvent.submittedRegistration(otp: $otp, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSubmittedRegistrationImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSubmittedRegistrationImplCopyWith<_$OtpSubmittedRegistrationImpl>
      get copyWith => __$$OtpSubmittedRegistrationImplCopyWithImpl<
          _$OtpSubmittedRegistrationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, String phoneNumber)
        submittedRegistration,
    required TResult Function(String otp, String phoneNumber) submittedLogin,
    required TResult Function(String phoneNumber, int state) otpResendRequested,
  }) {
    return submittedRegistration(otp, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, String phoneNumber)? submittedRegistration,
    TResult? Function(String otp, String phoneNumber)? submittedLogin,
    TResult? Function(String phoneNumber, int state)? otpResendRequested,
  }) {
    return submittedRegistration?.call(otp, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, String phoneNumber)? submittedRegistration,
    TResult Function(String otp, String phoneNumber)? submittedLogin,
    TResult Function(String phoneNumber, int state)? otpResendRequested,
    required TResult orElse(),
  }) {
    if (submittedRegistration != null) {
      return submittedRegistration(otp, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpSubmittedRegistration value)
        submittedRegistration,
    required TResult Function(_OtpSubmittedLogin value) submittedLogin,
    required TResult Function(_OtpResendRequested value) otpResendRequested,
  }) {
    return submittedRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpSubmittedRegistration value)? submittedRegistration,
    TResult? Function(_OtpSubmittedLogin value)? submittedLogin,
    TResult? Function(_OtpResendRequested value)? otpResendRequested,
  }) {
    return submittedRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpSubmittedRegistration value)? submittedRegistration,
    TResult Function(_OtpSubmittedLogin value)? submittedLogin,
    TResult Function(_OtpResendRequested value)? otpResendRequested,
    required TResult orElse(),
  }) {
    if (submittedRegistration != null) {
      return submittedRegistration(this);
    }
    return orElse();
  }
}

abstract class _OtpSubmittedRegistration implements OtpEvent {
  const factory _OtpSubmittedRegistration(
      {required final String otp,
      required final String phoneNumber}) = _$OtpSubmittedRegistrationImpl;

  String get otp;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$OtpSubmittedRegistrationImplCopyWith<_$OtpSubmittedRegistrationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpSubmittedLoginImplCopyWith<$Res>
    implements $OtpEventCopyWith<$Res> {
  factory _$$OtpSubmittedLoginImplCopyWith(_$OtpSubmittedLoginImpl value,
          $Res Function(_$OtpSubmittedLoginImpl) then) =
      __$$OtpSubmittedLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, String phoneNumber});
}

/// @nodoc
class __$$OtpSubmittedLoginImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$OtpSubmittedLoginImpl>
    implements _$$OtpSubmittedLoginImplCopyWith<$Res> {
  __$$OtpSubmittedLoginImplCopyWithImpl(_$OtpSubmittedLoginImpl _value,
      $Res Function(_$OtpSubmittedLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$OtpSubmittedLoginImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpSubmittedLoginImpl implements _OtpSubmittedLogin {
  const _$OtpSubmittedLoginImpl({required this.otp, required this.phoneNumber});

  @override
  final String otp;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'OtpEvent.submittedLogin(otp: $otp, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSubmittedLoginImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSubmittedLoginImplCopyWith<_$OtpSubmittedLoginImpl> get copyWith =>
      __$$OtpSubmittedLoginImplCopyWithImpl<_$OtpSubmittedLoginImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, String phoneNumber)
        submittedRegistration,
    required TResult Function(String otp, String phoneNumber) submittedLogin,
    required TResult Function(String phoneNumber, int state) otpResendRequested,
  }) {
    return submittedLogin(otp, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, String phoneNumber)? submittedRegistration,
    TResult? Function(String otp, String phoneNumber)? submittedLogin,
    TResult? Function(String phoneNumber, int state)? otpResendRequested,
  }) {
    return submittedLogin?.call(otp, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, String phoneNumber)? submittedRegistration,
    TResult Function(String otp, String phoneNumber)? submittedLogin,
    TResult Function(String phoneNumber, int state)? otpResendRequested,
    required TResult orElse(),
  }) {
    if (submittedLogin != null) {
      return submittedLogin(otp, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpSubmittedRegistration value)
        submittedRegistration,
    required TResult Function(_OtpSubmittedLogin value) submittedLogin,
    required TResult Function(_OtpResendRequested value) otpResendRequested,
  }) {
    return submittedLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpSubmittedRegistration value)? submittedRegistration,
    TResult? Function(_OtpSubmittedLogin value)? submittedLogin,
    TResult? Function(_OtpResendRequested value)? otpResendRequested,
  }) {
    return submittedLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpSubmittedRegistration value)? submittedRegistration,
    TResult Function(_OtpSubmittedLogin value)? submittedLogin,
    TResult Function(_OtpResendRequested value)? otpResendRequested,
    required TResult orElse(),
  }) {
    if (submittedLogin != null) {
      return submittedLogin(this);
    }
    return orElse();
  }
}

abstract class _OtpSubmittedLogin implements OtpEvent {
  const factory _OtpSubmittedLogin(
      {required final String otp,
      required final String phoneNumber}) = _$OtpSubmittedLoginImpl;

  String get otp;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$OtpSubmittedLoginImplCopyWith<_$OtpSubmittedLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpResendRequestedImplCopyWith<$Res>
    implements $OtpEventCopyWith<$Res> {
  factory _$$OtpResendRequestedImplCopyWith(_$OtpResendRequestedImpl value,
          $Res Function(_$OtpResendRequestedImpl) then) =
      __$$OtpResendRequestedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, int state});
}

/// @nodoc
class __$$OtpResendRequestedImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$OtpResendRequestedImpl>
    implements _$$OtpResendRequestedImplCopyWith<$Res> {
  __$$OtpResendRequestedImplCopyWithImpl(_$OtpResendRequestedImpl _value,
      $Res Function(_$OtpResendRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? state = null,
  }) {
    return _then(_$OtpResendRequestedImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OtpResendRequestedImpl implements _OtpResendRequested {
  const _$OtpResendRequestedImpl(this.phoneNumber, this.state);

  @override
  final String phoneNumber;
  @override
  final int state;

  @override
  String toString() {
    return 'OtpEvent.otpResendRequested(phoneNumber: $phoneNumber, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpResendRequestedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpResendRequestedImplCopyWith<_$OtpResendRequestedImpl> get copyWith =>
      __$$OtpResendRequestedImplCopyWithImpl<_$OtpResendRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, String phoneNumber)
        submittedRegistration,
    required TResult Function(String otp, String phoneNumber) submittedLogin,
    required TResult Function(String phoneNumber, int state) otpResendRequested,
  }) {
    return otpResendRequested(phoneNumber, state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp, String phoneNumber)? submittedRegistration,
    TResult? Function(String otp, String phoneNumber)? submittedLogin,
    TResult? Function(String phoneNumber, int state)? otpResendRequested,
  }) {
    return otpResendRequested?.call(phoneNumber, state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, String phoneNumber)? submittedRegistration,
    TResult Function(String otp, String phoneNumber)? submittedLogin,
    TResult Function(String phoneNumber, int state)? otpResendRequested,
    required TResult orElse(),
  }) {
    if (otpResendRequested != null) {
      return otpResendRequested(phoneNumber, state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpSubmittedRegistration value)
        submittedRegistration,
    required TResult Function(_OtpSubmittedLogin value) submittedLogin,
    required TResult Function(_OtpResendRequested value) otpResendRequested,
  }) {
    return otpResendRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpSubmittedRegistration value)? submittedRegistration,
    TResult? Function(_OtpSubmittedLogin value)? submittedLogin,
    TResult? Function(_OtpResendRequested value)? otpResendRequested,
  }) {
    return otpResendRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpSubmittedRegistration value)? submittedRegistration,
    TResult Function(_OtpSubmittedLogin value)? submittedLogin,
    TResult Function(_OtpResendRequested value)? otpResendRequested,
    required TResult orElse(),
  }) {
    if (otpResendRequested != null) {
      return otpResendRequested(this);
    }
    return orElse();
  }
}

abstract class _OtpResendRequested implements OtpEvent {
  const factory _OtpResendRequested(final String phoneNumber, final int state) =
      _$OtpResendRequestedImpl;

  @override
  String get phoneNumber;
  int get state;
  @override
  @JsonKey(ignore: true)
  _$$OtpResendRequestedImplCopyWith<_$OtpResendRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OtpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ErrorHandler error) error,
    required TResult Function(AuthModel? authModel) success,
    required TResult Function() resendSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ErrorHandler error)? error,
    TResult? Function(AuthModel? authModel)? success,
    TResult? Function()? resendSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ErrorHandler error)? error,
    TResult Function(AuthModel? authModel)? success,
    TResult Function()? resendSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpInProgress value) inProgress,
    required TResult Function(OtpError value) error,
    required TResult Function(OtpSuccess value) success,
    required TResult Function(OtpResendSuccess value) resendSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpInProgress value)? inProgress,
    TResult? Function(OtpError value)? error,
    TResult? Function(OtpSuccess value)? success,
    TResult? Function(OtpResendSuccess value)? resendSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpInProgress value)? inProgress,
    TResult Function(OtpError value)? error,
    TResult Function(OtpSuccess value)? success,
    TResult Function(OtpResendSuccess value)? resendSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<$Res> {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) then) =
      _$OtpStateCopyWithImpl<$Res, OtpState>;
}

/// @nodoc
class _$OtpStateCopyWithImpl<$Res, $Val extends OtpState>
    implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OtpInitialImplCopyWith<$Res> {
  factory _$$OtpInitialImplCopyWith(
          _$OtpInitialImpl value, $Res Function(_$OtpInitialImpl) then) =
      __$$OtpInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpInitialImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpInitialImpl>
    implements _$$OtpInitialImplCopyWith<$Res> {
  __$$OtpInitialImplCopyWithImpl(
      _$OtpInitialImpl _value, $Res Function(_$OtpInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpInitialImpl implements OtpInitial {
  const _$OtpInitialImpl();

  @override
  String toString() {
    return 'OtpState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ErrorHandler error) error,
    required TResult Function(AuthModel? authModel) success,
    required TResult Function() resendSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ErrorHandler error)? error,
    TResult? Function(AuthModel? authModel)? success,
    TResult? Function()? resendSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ErrorHandler error)? error,
    TResult Function(AuthModel? authModel)? success,
    TResult Function()? resendSuccess,
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
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpInProgress value) inProgress,
    required TResult Function(OtpError value) error,
    required TResult Function(OtpSuccess value) success,
    required TResult Function(OtpResendSuccess value) resendSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpInProgress value)? inProgress,
    TResult? Function(OtpError value)? error,
    TResult? Function(OtpSuccess value)? success,
    TResult? Function(OtpResendSuccess value)? resendSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpInProgress value)? inProgress,
    TResult Function(OtpError value)? error,
    TResult Function(OtpSuccess value)? success,
    TResult Function(OtpResendSuccess value)? resendSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class OtpInitial implements OtpState {
  const factory OtpInitial() = _$OtpInitialImpl;
}

/// @nodoc
abstract class _$$OtpInProgressImplCopyWith<$Res> {
  factory _$$OtpInProgressImplCopyWith(
          _$OtpInProgressImpl value, $Res Function(_$OtpInProgressImpl) then) =
      __$$OtpInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpInProgressImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpInProgressImpl>
    implements _$$OtpInProgressImplCopyWith<$Res> {
  __$$OtpInProgressImplCopyWithImpl(
      _$OtpInProgressImpl _value, $Res Function(_$OtpInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpInProgressImpl implements OtpInProgress {
  const _$OtpInProgressImpl();

  @override
  String toString() {
    return 'OtpState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ErrorHandler error) error,
    required TResult Function(AuthModel? authModel) success,
    required TResult Function() resendSuccess,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ErrorHandler error)? error,
    TResult? Function(AuthModel? authModel)? success,
    TResult? Function()? resendSuccess,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ErrorHandler error)? error,
    TResult Function(AuthModel? authModel)? success,
    TResult Function()? resendSuccess,
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
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpInProgress value) inProgress,
    required TResult Function(OtpError value) error,
    required TResult Function(OtpSuccess value) success,
    required TResult Function(OtpResendSuccess value) resendSuccess,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpInProgress value)? inProgress,
    TResult? Function(OtpError value)? error,
    TResult? Function(OtpSuccess value)? success,
    TResult? Function(OtpResendSuccess value)? resendSuccess,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpInProgress value)? inProgress,
    TResult Function(OtpError value)? error,
    TResult Function(OtpSuccess value)? success,
    TResult Function(OtpResendSuccess value)? resendSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class OtpInProgress implements OtpState {
  const factory OtpInProgress() = _$OtpInProgressImpl;
}

/// @nodoc
abstract class _$$OtpErrorImplCopyWith<$Res> {
  factory _$$OtpErrorImplCopyWith(
          _$OtpErrorImpl value, $Res Function(_$OtpErrorImpl) then) =
      __$$OtpErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler error});
}

/// @nodoc
class __$$OtpErrorImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpErrorImpl>
    implements _$$OtpErrorImplCopyWith<$Res> {
  __$$OtpErrorImplCopyWithImpl(
      _$OtpErrorImpl _value, $Res Function(_$OtpErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$OtpErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$OtpErrorImpl implements OtpError {
  const _$OtpErrorImpl(this.error);

  @override
  final ErrorHandler error;

  @override
  String toString() {
    return 'OtpState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpErrorImplCopyWith<_$OtpErrorImpl> get copyWith =>
      __$$OtpErrorImplCopyWithImpl<_$OtpErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ErrorHandler error) error,
    required TResult Function(AuthModel? authModel) success,
    required TResult Function() resendSuccess,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ErrorHandler error)? error,
    TResult? Function(AuthModel? authModel)? success,
    TResult? Function()? resendSuccess,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ErrorHandler error)? error,
    TResult Function(AuthModel? authModel)? success,
    TResult Function()? resendSuccess,
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
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpInProgress value) inProgress,
    required TResult Function(OtpError value) error,
    required TResult Function(OtpSuccess value) success,
    required TResult Function(OtpResendSuccess value) resendSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpInProgress value)? inProgress,
    TResult? Function(OtpError value)? error,
    TResult? Function(OtpSuccess value)? success,
    TResult? Function(OtpResendSuccess value)? resendSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpInProgress value)? inProgress,
    TResult Function(OtpError value)? error,
    TResult Function(OtpSuccess value)? success,
    TResult Function(OtpResendSuccess value)? resendSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class OtpError implements OtpState {
  const factory OtpError(final ErrorHandler error) = _$OtpErrorImpl;

  ErrorHandler get error;
  @JsonKey(ignore: true)
  _$$OtpErrorImplCopyWith<_$OtpErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpSuccessImplCopyWith<$Res> {
  factory _$$OtpSuccessImplCopyWith(
          _$OtpSuccessImpl value, $Res Function(_$OtpSuccessImpl) then) =
      __$$OtpSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthModel? authModel});

  $AuthModelCopyWith<$Res>? get authModel;
}

/// @nodoc
class __$$OtpSuccessImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpSuccessImpl>
    implements _$$OtpSuccessImplCopyWith<$Res> {
  __$$OtpSuccessImplCopyWithImpl(
      _$OtpSuccessImpl _value, $Res Function(_$OtpSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authModel = freezed,
  }) {
    return _then(_$OtpSuccessImpl(
      freezed == authModel
          ? _value.authModel
          : authModel // ignore: cast_nullable_to_non_nullable
              as AuthModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthModelCopyWith<$Res>? get authModel {
    if (_value.authModel == null) {
      return null;
    }

    return $AuthModelCopyWith<$Res>(_value.authModel!, (value) {
      return _then(_value.copyWith(authModel: value));
    });
  }
}

/// @nodoc

class _$OtpSuccessImpl implements OtpSuccess {
  const _$OtpSuccessImpl(this.authModel);

  @override
  final AuthModel? authModel;

  @override
  String toString() {
    return 'OtpState.success(authModel: $authModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSuccessImpl &&
            (identical(other.authModel, authModel) ||
                other.authModel == authModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSuccessImplCopyWith<_$OtpSuccessImpl> get copyWith =>
      __$$OtpSuccessImplCopyWithImpl<_$OtpSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ErrorHandler error) error,
    required TResult Function(AuthModel? authModel) success,
    required TResult Function() resendSuccess,
  }) {
    return success(authModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ErrorHandler error)? error,
    TResult? Function(AuthModel? authModel)? success,
    TResult? Function()? resendSuccess,
  }) {
    return success?.call(authModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ErrorHandler error)? error,
    TResult Function(AuthModel? authModel)? success,
    TResult Function()? resendSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(authModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpInProgress value) inProgress,
    required TResult Function(OtpError value) error,
    required TResult Function(OtpSuccess value) success,
    required TResult Function(OtpResendSuccess value) resendSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpInProgress value)? inProgress,
    TResult? Function(OtpError value)? error,
    TResult? Function(OtpSuccess value)? success,
    TResult? Function(OtpResendSuccess value)? resendSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpInProgress value)? inProgress,
    TResult Function(OtpError value)? error,
    TResult Function(OtpSuccess value)? success,
    TResult Function(OtpResendSuccess value)? resendSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class OtpSuccess implements OtpState {
  const factory OtpSuccess(final AuthModel? authModel) = _$OtpSuccessImpl;

  AuthModel? get authModel;
  @JsonKey(ignore: true)
  _$$OtpSuccessImplCopyWith<_$OtpSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpResendSuccessImplCopyWith<$Res> {
  factory _$$OtpResendSuccessImplCopyWith(_$OtpResendSuccessImpl value,
          $Res Function(_$OtpResendSuccessImpl) then) =
      __$$OtpResendSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpResendSuccessImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpResendSuccessImpl>
    implements _$$OtpResendSuccessImplCopyWith<$Res> {
  __$$OtpResendSuccessImplCopyWithImpl(_$OtpResendSuccessImpl _value,
      $Res Function(_$OtpResendSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpResendSuccessImpl implements OtpResendSuccess {
  const _$OtpResendSuccessImpl();

  @override
  String toString() {
    return 'OtpState.resendSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpResendSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(ErrorHandler error) error,
    required TResult Function(AuthModel? authModel) success,
    required TResult Function() resendSuccess,
  }) {
    return resendSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(ErrorHandler error)? error,
    TResult? Function(AuthModel? authModel)? success,
    TResult? Function()? resendSuccess,
  }) {
    return resendSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(ErrorHandler error)? error,
    TResult Function(AuthModel? authModel)? success,
    TResult Function()? resendSuccess,
    required TResult orElse(),
  }) {
    if (resendSuccess != null) {
      return resendSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpInProgress value) inProgress,
    required TResult Function(OtpError value) error,
    required TResult Function(OtpSuccess value) success,
    required TResult Function(OtpResendSuccess value) resendSuccess,
  }) {
    return resendSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpInProgress value)? inProgress,
    TResult? Function(OtpError value)? error,
    TResult? Function(OtpSuccess value)? success,
    TResult? Function(OtpResendSuccess value)? resendSuccess,
  }) {
    return resendSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpInProgress value)? inProgress,
    TResult Function(OtpError value)? error,
    TResult Function(OtpSuccess value)? success,
    TResult Function(OtpResendSuccess value)? resendSuccess,
    required TResult orElse(),
  }) {
    if (resendSuccess != null) {
      return resendSuccess(this);
    }
    return orElse();
  }
}

abstract class OtpResendSuccess implements OtpState {
  const factory OtpResendSuccess() = _$OtpResendSuccessImpl;
}
