// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneSubmitted,
    required TResult Function(String otp) otpSubmitted,
    required TResult Function() resendOtpRequested,
    required TResult Function() myIdIdentified,
    required TResult Function(String password, String passwordCp)
        newPasswordSubmittted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneSubmitted,
    TResult? Function(String otp)? otpSubmitted,
    TResult? Function()? resendOtpRequested,
    TResult? Function()? myIdIdentified,
    TResult? Function(String password, String passwordCp)?
        newPasswordSubmittted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneSubmitted,
    TResult Function(String otp)? otpSubmitted,
    TResult Function()? resendOtpRequested,
    TResult Function()? myIdIdentified,
    TResult Function(String password, String passwordCp)? newPasswordSubmittted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ForgotPasswordPhoneSubmitted value)
        phoneSubmitted,
    required TResult Function(_ForgotPasswordOtpSubmitted value) otpSubmitted,
    required TResult Function(_ForgotPasswordResendOtpRequested value)
        resendOtpRequested,
    required TResult Function(_ForgotPasswordMyIdIdentified value)
        myIdIdentified,
    required TResult Function(_ForgotPasswordNewPasswordSubmitted value)
        newPasswordSubmittted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForgotPasswordPhoneSubmitted value)? phoneSubmitted,
    TResult? Function(_ForgotPasswordOtpSubmitted value)? otpSubmitted,
    TResult? Function(_ForgotPasswordResendOtpRequested value)?
        resendOtpRequested,
    TResult? Function(_ForgotPasswordMyIdIdentified value)? myIdIdentified,
    TResult? Function(_ForgotPasswordNewPasswordSubmitted value)?
        newPasswordSubmittted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForgotPasswordPhoneSubmitted value)? phoneSubmitted,
    TResult Function(_ForgotPasswordOtpSubmitted value)? otpSubmitted,
    TResult Function(_ForgotPasswordResendOtpRequested value)?
        resendOtpRequested,
    TResult Function(_ForgotPasswordMyIdIdentified value)? myIdIdentified,
    TResult Function(_ForgotPasswordNewPasswordSubmitted value)?
        newPasswordSubmittted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ForgotPasswordPhoneSubmittedImplCopyWith<$Res> {
  factory _$$ForgotPasswordPhoneSubmittedImplCopyWith(
          _$ForgotPasswordPhoneSubmittedImpl value,
          $Res Function(_$ForgotPasswordPhoneSubmittedImpl) then) =
      __$$ForgotPasswordPhoneSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$ForgotPasswordPhoneSubmittedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ForgotPasswordPhoneSubmittedImpl>
    implements _$$ForgotPasswordPhoneSubmittedImplCopyWith<$Res> {
  __$$ForgotPasswordPhoneSubmittedImplCopyWithImpl(
      _$ForgotPasswordPhoneSubmittedImpl _value,
      $Res Function(_$ForgotPasswordPhoneSubmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$ForgotPasswordPhoneSubmittedImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordPhoneSubmittedImpl
    implements _ForgotPasswordPhoneSubmitted {
  const _$ForgotPasswordPhoneSubmittedImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'ForgotPasswordEvent.phoneSubmitted(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordPhoneSubmittedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordPhoneSubmittedImplCopyWith<
          _$ForgotPasswordPhoneSubmittedImpl>
      get copyWith => __$$ForgotPasswordPhoneSubmittedImplCopyWithImpl<
          _$ForgotPasswordPhoneSubmittedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneSubmitted,
    required TResult Function(String otp) otpSubmitted,
    required TResult Function() resendOtpRequested,
    required TResult Function() myIdIdentified,
    required TResult Function(String password, String passwordCp)
        newPasswordSubmittted,
  }) {
    return phoneSubmitted(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneSubmitted,
    TResult? Function(String otp)? otpSubmitted,
    TResult? Function()? resendOtpRequested,
    TResult? Function()? myIdIdentified,
    TResult? Function(String password, String passwordCp)?
        newPasswordSubmittted,
  }) {
    return phoneSubmitted?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneSubmitted,
    TResult Function(String otp)? otpSubmitted,
    TResult Function()? resendOtpRequested,
    TResult Function()? myIdIdentified,
    TResult Function(String password, String passwordCp)? newPasswordSubmittted,
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
    required TResult Function(_ForgotPasswordPhoneSubmitted value)
        phoneSubmitted,
    required TResult Function(_ForgotPasswordOtpSubmitted value) otpSubmitted,
    required TResult Function(_ForgotPasswordResendOtpRequested value)
        resendOtpRequested,
    required TResult Function(_ForgotPasswordMyIdIdentified value)
        myIdIdentified,
    required TResult Function(_ForgotPasswordNewPasswordSubmitted value)
        newPasswordSubmittted,
  }) {
    return phoneSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForgotPasswordPhoneSubmitted value)? phoneSubmitted,
    TResult? Function(_ForgotPasswordOtpSubmitted value)? otpSubmitted,
    TResult? Function(_ForgotPasswordResendOtpRequested value)?
        resendOtpRequested,
    TResult? Function(_ForgotPasswordMyIdIdentified value)? myIdIdentified,
    TResult? Function(_ForgotPasswordNewPasswordSubmitted value)?
        newPasswordSubmittted,
  }) {
    return phoneSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForgotPasswordPhoneSubmitted value)? phoneSubmitted,
    TResult Function(_ForgotPasswordOtpSubmitted value)? otpSubmitted,
    TResult Function(_ForgotPasswordResendOtpRequested value)?
        resendOtpRequested,
    TResult Function(_ForgotPasswordMyIdIdentified value)? myIdIdentified,
    TResult Function(_ForgotPasswordNewPasswordSubmitted value)?
        newPasswordSubmittted,
    required TResult orElse(),
  }) {
    if (phoneSubmitted != null) {
      return phoneSubmitted(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordPhoneSubmitted implements ForgotPasswordEvent {
  const factory _ForgotPasswordPhoneSubmitted(final String phoneNumber) =
      _$ForgotPasswordPhoneSubmittedImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$ForgotPasswordPhoneSubmittedImplCopyWith<
          _$ForgotPasswordPhoneSubmittedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordOtpSubmittedImplCopyWith<$Res> {
  factory _$$ForgotPasswordOtpSubmittedImplCopyWith(
          _$ForgotPasswordOtpSubmittedImpl value,
          $Res Function(_$ForgotPasswordOtpSubmittedImpl) then) =
      __$$ForgotPasswordOtpSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$ForgotPasswordOtpSubmittedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ForgotPasswordOtpSubmittedImpl>
    implements _$$ForgotPasswordOtpSubmittedImplCopyWith<$Res> {
  __$$ForgotPasswordOtpSubmittedImplCopyWithImpl(
      _$ForgotPasswordOtpSubmittedImpl _value,
      $Res Function(_$ForgotPasswordOtpSubmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$ForgotPasswordOtpSubmittedImpl(
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordOtpSubmittedImpl implements _ForgotPasswordOtpSubmitted {
  const _$ForgotPasswordOtpSubmittedImpl(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'ForgotPasswordEvent.otpSubmitted(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordOtpSubmittedImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordOtpSubmittedImplCopyWith<_$ForgotPasswordOtpSubmittedImpl>
      get copyWith => __$$ForgotPasswordOtpSubmittedImplCopyWithImpl<
          _$ForgotPasswordOtpSubmittedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneSubmitted,
    required TResult Function(String otp) otpSubmitted,
    required TResult Function() resendOtpRequested,
    required TResult Function() myIdIdentified,
    required TResult Function(String password, String passwordCp)
        newPasswordSubmittted,
  }) {
    return otpSubmitted(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneSubmitted,
    TResult? Function(String otp)? otpSubmitted,
    TResult? Function()? resendOtpRequested,
    TResult? Function()? myIdIdentified,
    TResult? Function(String password, String passwordCp)?
        newPasswordSubmittted,
  }) {
    return otpSubmitted?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneSubmitted,
    TResult Function(String otp)? otpSubmitted,
    TResult Function()? resendOtpRequested,
    TResult Function()? myIdIdentified,
    TResult Function(String password, String passwordCp)? newPasswordSubmittted,
    required TResult orElse(),
  }) {
    if (otpSubmitted != null) {
      return otpSubmitted(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ForgotPasswordPhoneSubmitted value)
        phoneSubmitted,
    required TResult Function(_ForgotPasswordOtpSubmitted value) otpSubmitted,
    required TResult Function(_ForgotPasswordResendOtpRequested value)
        resendOtpRequested,
    required TResult Function(_ForgotPasswordMyIdIdentified value)
        myIdIdentified,
    required TResult Function(_ForgotPasswordNewPasswordSubmitted value)
        newPasswordSubmittted,
  }) {
    return otpSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForgotPasswordPhoneSubmitted value)? phoneSubmitted,
    TResult? Function(_ForgotPasswordOtpSubmitted value)? otpSubmitted,
    TResult? Function(_ForgotPasswordResendOtpRequested value)?
        resendOtpRequested,
    TResult? Function(_ForgotPasswordMyIdIdentified value)? myIdIdentified,
    TResult? Function(_ForgotPasswordNewPasswordSubmitted value)?
        newPasswordSubmittted,
  }) {
    return otpSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForgotPasswordPhoneSubmitted value)? phoneSubmitted,
    TResult Function(_ForgotPasswordOtpSubmitted value)? otpSubmitted,
    TResult Function(_ForgotPasswordResendOtpRequested value)?
        resendOtpRequested,
    TResult Function(_ForgotPasswordMyIdIdentified value)? myIdIdentified,
    TResult Function(_ForgotPasswordNewPasswordSubmitted value)?
        newPasswordSubmittted,
    required TResult orElse(),
  }) {
    if (otpSubmitted != null) {
      return otpSubmitted(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordOtpSubmitted implements ForgotPasswordEvent {
  const factory _ForgotPasswordOtpSubmitted(final String otp) =
      _$ForgotPasswordOtpSubmittedImpl;

  String get otp;
  @JsonKey(ignore: true)
  _$$ForgotPasswordOtpSubmittedImplCopyWith<_$ForgotPasswordOtpSubmittedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordResendOtpRequestedImplCopyWith<$Res> {
  factory _$$ForgotPasswordResendOtpRequestedImplCopyWith(
          _$ForgotPasswordResendOtpRequestedImpl value,
          $Res Function(_$ForgotPasswordResendOtpRequestedImpl) then) =
      __$$ForgotPasswordResendOtpRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordResendOtpRequestedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ForgotPasswordResendOtpRequestedImpl>
    implements _$$ForgotPasswordResendOtpRequestedImplCopyWith<$Res> {
  __$$ForgotPasswordResendOtpRequestedImplCopyWithImpl(
      _$ForgotPasswordResendOtpRequestedImpl _value,
      $Res Function(_$ForgotPasswordResendOtpRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasswordResendOtpRequestedImpl
    implements _ForgotPasswordResendOtpRequested {
  const _$ForgotPasswordResendOtpRequestedImpl();

  @override
  String toString() {
    return 'ForgotPasswordEvent.resendOtpRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordResendOtpRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneSubmitted,
    required TResult Function(String otp) otpSubmitted,
    required TResult Function() resendOtpRequested,
    required TResult Function() myIdIdentified,
    required TResult Function(String password, String passwordCp)
        newPasswordSubmittted,
  }) {
    return resendOtpRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneSubmitted,
    TResult? Function(String otp)? otpSubmitted,
    TResult? Function()? resendOtpRequested,
    TResult? Function()? myIdIdentified,
    TResult? Function(String password, String passwordCp)?
        newPasswordSubmittted,
  }) {
    return resendOtpRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneSubmitted,
    TResult Function(String otp)? otpSubmitted,
    TResult Function()? resendOtpRequested,
    TResult Function()? myIdIdentified,
    TResult Function(String password, String passwordCp)? newPasswordSubmittted,
    required TResult orElse(),
  }) {
    if (resendOtpRequested != null) {
      return resendOtpRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ForgotPasswordPhoneSubmitted value)
        phoneSubmitted,
    required TResult Function(_ForgotPasswordOtpSubmitted value) otpSubmitted,
    required TResult Function(_ForgotPasswordResendOtpRequested value)
        resendOtpRequested,
    required TResult Function(_ForgotPasswordMyIdIdentified value)
        myIdIdentified,
    required TResult Function(_ForgotPasswordNewPasswordSubmitted value)
        newPasswordSubmittted,
  }) {
    return resendOtpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForgotPasswordPhoneSubmitted value)? phoneSubmitted,
    TResult? Function(_ForgotPasswordOtpSubmitted value)? otpSubmitted,
    TResult? Function(_ForgotPasswordResendOtpRequested value)?
        resendOtpRequested,
    TResult? Function(_ForgotPasswordMyIdIdentified value)? myIdIdentified,
    TResult? Function(_ForgotPasswordNewPasswordSubmitted value)?
        newPasswordSubmittted,
  }) {
    return resendOtpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForgotPasswordPhoneSubmitted value)? phoneSubmitted,
    TResult Function(_ForgotPasswordOtpSubmitted value)? otpSubmitted,
    TResult Function(_ForgotPasswordResendOtpRequested value)?
        resendOtpRequested,
    TResult Function(_ForgotPasswordMyIdIdentified value)? myIdIdentified,
    TResult Function(_ForgotPasswordNewPasswordSubmitted value)?
        newPasswordSubmittted,
    required TResult orElse(),
  }) {
    if (resendOtpRequested != null) {
      return resendOtpRequested(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordResendOtpRequested
    implements ForgotPasswordEvent {
  const factory _ForgotPasswordResendOtpRequested() =
      _$ForgotPasswordResendOtpRequestedImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordMyIdIdentifiedImplCopyWith<$Res> {
  factory _$$ForgotPasswordMyIdIdentifiedImplCopyWith(
          _$ForgotPasswordMyIdIdentifiedImpl value,
          $Res Function(_$ForgotPasswordMyIdIdentifiedImpl) then) =
      __$$ForgotPasswordMyIdIdentifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordMyIdIdentifiedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ForgotPasswordMyIdIdentifiedImpl>
    implements _$$ForgotPasswordMyIdIdentifiedImplCopyWith<$Res> {
  __$$ForgotPasswordMyIdIdentifiedImplCopyWithImpl(
      _$ForgotPasswordMyIdIdentifiedImpl _value,
      $Res Function(_$ForgotPasswordMyIdIdentifiedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasswordMyIdIdentifiedImpl
    implements _ForgotPasswordMyIdIdentified {
  const _$ForgotPasswordMyIdIdentifiedImpl();

  @override
  String toString() {
    return 'ForgotPasswordEvent.myIdIdentified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordMyIdIdentifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneSubmitted,
    required TResult Function(String otp) otpSubmitted,
    required TResult Function() resendOtpRequested,
    required TResult Function() myIdIdentified,
    required TResult Function(String password, String passwordCp)
        newPasswordSubmittted,
  }) {
    return myIdIdentified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneSubmitted,
    TResult? Function(String otp)? otpSubmitted,
    TResult? Function()? resendOtpRequested,
    TResult? Function()? myIdIdentified,
    TResult? Function(String password, String passwordCp)?
        newPasswordSubmittted,
  }) {
    return myIdIdentified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneSubmitted,
    TResult Function(String otp)? otpSubmitted,
    TResult Function()? resendOtpRequested,
    TResult Function()? myIdIdentified,
    TResult Function(String password, String passwordCp)? newPasswordSubmittted,
    required TResult orElse(),
  }) {
    if (myIdIdentified != null) {
      return myIdIdentified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ForgotPasswordPhoneSubmitted value)
        phoneSubmitted,
    required TResult Function(_ForgotPasswordOtpSubmitted value) otpSubmitted,
    required TResult Function(_ForgotPasswordResendOtpRequested value)
        resendOtpRequested,
    required TResult Function(_ForgotPasswordMyIdIdentified value)
        myIdIdentified,
    required TResult Function(_ForgotPasswordNewPasswordSubmitted value)
        newPasswordSubmittted,
  }) {
    return myIdIdentified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForgotPasswordPhoneSubmitted value)? phoneSubmitted,
    TResult? Function(_ForgotPasswordOtpSubmitted value)? otpSubmitted,
    TResult? Function(_ForgotPasswordResendOtpRequested value)?
        resendOtpRequested,
    TResult? Function(_ForgotPasswordMyIdIdentified value)? myIdIdentified,
    TResult? Function(_ForgotPasswordNewPasswordSubmitted value)?
        newPasswordSubmittted,
  }) {
    return myIdIdentified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForgotPasswordPhoneSubmitted value)? phoneSubmitted,
    TResult Function(_ForgotPasswordOtpSubmitted value)? otpSubmitted,
    TResult Function(_ForgotPasswordResendOtpRequested value)?
        resendOtpRequested,
    TResult Function(_ForgotPasswordMyIdIdentified value)? myIdIdentified,
    TResult Function(_ForgotPasswordNewPasswordSubmitted value)?
        newPasswordSubmittted,
    required TResult orElse(),
  }) {
    if (myIdIdentified != null) {
      return myIdIdentified(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordMyIdIdentified implements ForgotPasswordEvent {
  const factory _ForgotPasswordMyIdIdentified() =
      _$ForgotPasswordMyIdIdentifiedImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordNewPasswordSubmittedImplCopyWith<$Res> {
  factory _$$ForgotPasswordNewPasswordSubmittedImplCopyWith(
          _$ForgotPasswordNewPasswordSubmittedImpl value,
          $Res Function(_$ForgotPasswordNewPasswordSubmittedImpl) then) =
      __$$ForgotPasswordNewPasswordSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password, String passwordCp});
}

/// @nodoc
class __$$ForgotPasswordNewPasswordSubmittedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ForgotPasswordNewPasswordSubmittedImpl>
    implements _$$ForgotPasswordNewPasswordSubmittedImplCopyWith<$Res> {
  __$$ForgotPasswordNewPasswordSubmittedImplCopyWithImpl(
      _$ForgotPasswordNewPasswordSubmittedImpl _value,
      $Res Function(_$ForgotPasswordNewPasswordSubmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? passwordCp = null,
  }) {
    return _then(_$ForgotPasswordNewPasswordSubmittedImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordCp: null == passwordCp
          ? _value.passwordCp
          : passwordCp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordNewPasswordSubmittedImpl
    implements _ForgotPasswordNewPasswordSubmitted {
  const _$ForgotPasswordNewPasswordSubmittedImpl(
      {required this.password, required this.passwordCp});

  @override
  final String password;
  @override
  final String passwordCp;

  @override
  String toString() {
    return 'ForgotPasswordEvent.newPasswordSubmittted(password: $password, passwordCp: $passwordCp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordNewPasswordSubmittedImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordCp, passwordCp) ||
                other.passwordCp == passwordCp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, passwordCp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordNewPasswordSubmittedImplCopyWith<
          _$ForgotPasswordNewPasswordSubmittedImpl>
      get copyWith => __$$ForgotPasswordNewPasswordSubmittedImplCopyWithImpl<
          _$ForgotPasswordNewPasswordSubmittedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneSubmitted,
    required TResult Function(String otp) otpSubmitted,
    required TResult Function() resendOtpRequested,
    required TResult Function() myIdIdentified,
    required TResult Function(String password, String passwordCp)
        newPasswordSubmittted,
  }) {
    return newPasswordSubmittted(password, passwordCp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneSubmitted,
    TResult? Function(String otp)? otpSubmitted,
    TResult? Function()? resendOtpRequested,
    TResult? Function()? myIdIdentified,
    TResult? Function(String password, String passwordCp)?
        newPasswordSubmittted,
  }) {
    return newPasswordSubmittted?.call(password, passwordCp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneSubmitted,
    TResult Function(String otp)? otpSubmitted,
    TResult Function()? resendOtpRequested,
    TResult Function()? myIdIdentified,
    TResult Function(String password, String passwordCp)? newPasswordSubmittted,
    required TResult orElse(),
  }) {
    if (newPasswordSubmittted != null) {
      return newPasswordSubmittted(password, passwordCp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ForgotPasswordPhoneSubmitted value)
        phoneSubmitted,
    required TResult Function(_ForgotPasswordOtpSubmitted value) otpSubmitted,
    required TResult Function(_ForgotPasswordResendOtpRequested value)
        resendOtpRequested,
    required TResult Function(_ForgotPasswordMyIdIdentified value)
        myIdIdentified,
    required TResult Function(_ForgotPasswordNewPasswordSubmitted value)
        newPasswordSubmittted,
  }) {
    return newPasswordSubmittted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForgotPasswordPhoneSubmitted value)? phoneSubmitted,
    TResult? Function(_ForgotPasswordOtpSubmitted value)? otpSubmitted,
    TResult? Function(_ForgotPasswordResendOtpRequested value)?
        resendOtpRequested,
    TResult? Function(_ForgotPasswordMyIdIdentified value)? myIdIdentified,
    TResult? Function(_ForgotPasswordNewPasswordSubmitted value)?
        newPasswordSubmittted,
  }) {
    return newPasswordSubmittted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForgotPasswordPhoneSubmitted value)? phoneSubmitted,
    TResult Function(_ForgotPasswordOtpSubmitted value)? otpSubmitted,
    TResult Function(_ForgotPasswordResendOtpRequested value)?
        resendOtpRequested,
    TResult Function(_ForgotPasswordMyIdIdentified value)? myIdIdentified,
    TResult Function(_ForgotPasswordNewPasswordSubmitted value)?
        newPasswordSubmittted,
    required TResult orElse(),
  }) {
    if (newPasswordSubmittted != null) {
      return newPasswordSubmittted(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordNewPasswordSubmitted
    implements ForgotPasswordEvent {
  const factory _ForgotPasswordNewPasswordSubmitted(
          {required final String password, required final String passwordCp}) =
      _$ForgotPasswordNewPasswordSubmittedImpl;

  String get password;
  String get passwordCp;
  @JsonKey(ignore: true)
  _$$ForgotPasswordNewPasswordSubmittedImplCopyWith<
          _$ForgotPasswordNewPasswordSubmittedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) checkSuccess,
    required TResult Function(bool identified) otpSuccess,
    required TResult Function() success,
    required TResult Function(ErrorHandler e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? checkSuccess,
    TResult? Function(bool identified)? otpSuccess,
    TResult? Function()? success,
    TResult? Function(ErrorHandler e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? checkSuccess,
    TResult Function(bool identified)? otpSuccess,
    TResult Function()? success,
    TResult Function(ErrorHandler e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordLoading value) loading,
    required TResult Function(ForgotPasswordCheckSuccess value) checkSuccess,
    required TResult Function(ForgotPasswordOtpSuccess value) otpSuccess,
    required TResult Function(ForgotPasswordSuccess value) success,
    required TResult Function(ForgotPasswordError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInitial value)? initial,
    TResult? Function(ForgotPasswordLoading value)? loading,
    TResult? Function(ForgotPasswordCheckSuccess value)? checkSuccess,
    TResult? Function(ForgotPasswordOtpSuccess value)? otpSuccess,
    TResult? Function(ForgotPasswordSuccess value)? success,
    TResult? Function(ForgotPasswordError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordLoading value)? loading,
    TResult Function(ForgotPasswordCheckSuccess value)? checkSuccess,
    TResult Function(ForgotPasswordOtpSuccess value)? otpSuccess,
    TResult Function(ForgotPasswordSuccess value)? success,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ForgotPasswordInitialImplCopyWith<$Res> {
  factory _$$ForgotPasswordInitialImplCopyWith(
          _$ForgotPasswordInitialImpl value,
          $Res Function(_$ForgotPasswordInitialImpl) then) =
      __$$ForgotPasswordInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordInitialImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordInitialImpl>
    implements _$$ForgotPasswordInitialImplCopyWith<$Res> {
  __$$ForgotPasswordInitialImplCopyWithImpl(_$ForgotPasswordInitialImpl _value,
      $Res Function(_$ForgotPasswordInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasswordInitialImpl implements ForgotPasswordInitial {
  const _$ForgotPasswordInitialImpl();

  @override
  String toString() {
    return 'ForgotPasswordState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) checkSuccess,
    required TResult Function(bool identified) otpSuccess,
    required TResult Function() success,
    required TResult Function(ErrorHandler e) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? checkSuccess,
    TResult? Function(bool identified)? otpSuccess,
    TResult? Function()? success,
    TResult? Function(ErrorHandler e)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? checkSuccess,
    TResult Function(bool identified)? otpSuccess,
    TResult Function()? success,
    TResult Function(ErrorHandler e)? error,
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
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordLoading value) loading,
    required TResult Function(ForgotPasswordCheckSuccess value) checkSuccess,
    required TResult Function(ForgotPasswordOtpSuccess value) otpSuccess,
    required TResult Function(ForgotPasswordSuccess value) success,
    required TResult Function(ForgotPasswordError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInitial value)? initial,
    TResult? Function(ForgotPasswordLoading value)? loading,
    TResult? Function(ForgotPasswordCheckSuccess value)? checkSuccess,
    TResult? Function(ForgotPasswordOtpSuccess value)? otpSuccess,
    TResult? Function(ForgotPasswordSuccess value)? success,
    TResult? Function(ForgotPasswordError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordLoading value)? loading,
    TResult Function(ForgotPasswordCheckSuccess value)? checkSuccess,
    TResult Function(ForgotPasswordOtpSuccess value)? otpSuccess,
    TResult Function(ForgotPasswordSuccess value)? success,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordInitial implements ForgotPasswordState {
  const factory ForgotPasswordInitial() = _$ForgotPasswordInitialImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordLoadingImplCopyWith<$Res> {
  factory _$$ForgotPasswordLoadingImplCopyWith(
          _$ForgotPasswordLoadingImpl value,
          $Res Function(_$ForgotPasswordLoadingImpl) then) =
      __$$ForgotPasswordLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordLoadingImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordLoadingImpl>
    implements _$$ForgotPasswordLoadingImplCopyWith<$Res> {
  __$$ForgotPasswordLoadingImplCopyWithImpl(_$ForgotPasswordLoadingImpl _value,
      $Res Function(_$ForgotPasswordLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasswordLoadingImpl implements ForgotPasswordLoading {
  const _$ForgotPasswordLoadingImpl();

  @override
  String toString() {
    return 'ForgotPasswordState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) checkSuccess,
    required TResult Function(bool identified) otpSuccess,
    required TResult Function() success,
    required TResult Function(ErrorHandler e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? checkSuccess,
    TResult? Function(bool identified)? otpSuccess,
    TResult? Function()? success,
    TResult? Function(ErrorHandler e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? checkSuccess,
    TResult Function(bool identified)? otpSuccess,
    TResult Function()? success,
    TResult Function(ErrorHandler e)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordLoading value) loading,
    required TResult Function(ForgotPasswordCheckSuccess value) checkSuccess,
    required TResult Function(ForgotPasswordOtpSuccess value) otpSuccess,
    required TResult Function(ForgotPasswordSuccess value) success,
    required TResult Function(ForgotPasswordError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInitial value)? initial,
    TResult? Function(ForgotPasswordLoading value)? loading,
    TResult? Function(ForgotPasswordCheckSuccess value)? checkSuccess,
    TResult? Function(ForgotPasswordOtpSuccess value)? otpSuccess,
    TResult? Function(ForgotPasswordSuccess value)? success,
    TResult? Function(ForgotPasswordError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordLoading value)? loading,
    TResult Function(ForgotPasswordCheckSuccess value)? checkSuccess,
    TResult Function(ForgotPasswordOtpSuccess value)? otpSuccess,
    TResult Function(ForgotPasswordSuccess value)? success,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordLoading implements ForgotPasswordState {
  const factory ForgotPasswordLoading() = _$ForgotPasswordLoadingImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordCheckSuccessImplCopyWith<$Res> {
  factory _$$ForgotPasswordCheckSuccessImplCopyWith(
          _$ForgotPasswordCheckSuccessImpl value,
          $Res Function(_$ForgotPasswordCheckSuccessImpl) then) =
      __$$ForgotPasswordCheckSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$ForgotPasswordCheckSuccessImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res,
        _$ForgotPasswordCheckSuccessImpl>
    implements _$$ForgotPasswordCheckSuccessImplCopyWith<$Res> {
  __$$ForgotPasswordCheckSuccessImplCopyWithImpl(
      _$ForgotPasswordCheckSuccessImpl _value,
      $Res Function(_$ForgotPasswordCheckSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$ForgotPasswordCheckSuccessImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordCheckSuccessImpl implements ForgotPasswordCheckSuccess {
  const _$ForgotPasswordCheckSuccessImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'ForgotPasswordState.checkSuccess(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordCheckSuccessImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordCheckSuccessImplCopyWith<_$ForgotPasswordCheckSuccessImpl>
      get copyWith => __$$ForgotPasswordCheckSuccessImplCopyWithImpl<
          _$ForgotPasswordCheckSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) checkSuccess,
    required TResult Function(bool identified) otpSuccess,
    required TResult Function() success,
    required TResult Function(ErrorHandler e) error,
  }) {
    return checkSuccess(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? checkSuccess,
    TResult? Function(bool identified)? otpSuccess,
    TResult? Function()? success,
    TResult? Function(ErrorHandler e)? error,
  }) {
    return checkSuccess?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? checkSuccess,
    TResult Function(bool identified)? otpSuccess,
    TResult Function()? success,
    TResult Function(ErrorHandler e)? error,
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
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordLoading value) loading,
    required TResult Function(ForgotPasswordCheckSuccess value) checkSuccess,
    required TResult Function(ForgotPasswordOtpSuccess value) otpSuccess,
    required TResult Function(ForgotPasswordSuccess value) success,
    required TResult Function(ForgotPasswordError value) error,
  }) {
    return checkSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInitial value)? initial,
    TResult? Function(ForgotPasswordLoading value)? loading,
    TResult? Function(ForgotPasswordCheckSuccess value)? checkSuccess,
    TResult? Function(ForgotPasswordOtpSuccess value)? otpSuccess,
    TResult? Function(ForgotPasswordSuccess value)? success,
    TResult? Function(ForgotPasswordError value)? error,
  }) {
    return checkSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordLoading value)? loading,
    TResult Function(ForgotPasswordCheckSuccess value)? checkSuccess,
    TResult Function(ForgotPasswordOtpSuccess value)? otpSuccess,
    TResult Function(ForgotPasswordSuccess value)? success,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) {
    if (checkSuccess != null) {
      return checkSuccess(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordCheckSuccess implements ForgotPasswordState {
  const factory ForgotPasswordCheckSuccess(final String phoneNumber) =
      _$ForgotPasswordCheckSuccessImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$ForgotPasswordCheckSuccessImplCopyWith<_$ForgotPasswordCheckSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordOtpSuccessImplCopyWith<$Res> {
  factory _$$ForgotPasswordOtpSuccessImplCopyWith(
          _$ForgotPasswordOtpSuccessImpl value,
          $Res Function(_$ForgotPasswordOtpSuccessImpl) then) =
      __$$ForgotPasswordOtpSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool identified});
}

/// @nodoc
class __$$ForgotPasswordOtpSuccessImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res,
        _$ForgotPasswordOtpSuccessImpl>
    implements _$$ForgotPasswordOtpSuccessImplCopyWith<$Res> {
  __$$ForgotPasswordOtpSuccessImplCopyWithImpl(
      _$ForgotPasswordOtpSuccessImpl _value,
      $Res Function(_$ForgotPasswordOtpSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identified = null,
  }) {
    return _then(_$ForgotPasswordOtpSuccessImpl(
      identified: null == identified
          ? _value.identified
          : identified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordOtpSuccessImpl implements ForgotPasswordOtpSuccess {
  const _$ForgotPasswordOtpSuccessImpl({required this.identified});

  @override
  final bool identified;

  @override
  String toString() {
    return 'ForgotPasswordState.otpSuccess(identified: $identified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordOtpSuccessImpl &&
            (identical(other.identified, identified) ||
                other.identified == identified));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordOtpSuccessImplCopyWith<_$ForgotPasswordOtpSuccessImpl>
      get copyWith => __$$ForgotPasswordOtpSuccessImplCopyWithImpl<
          _$ForgotPasswordOtpSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) checkSuccess,
    required TResult Function(bool identified) otpSuccess,
    required TResult Function() success,
    required TResult Function(ErrorHandler e) error,
  }) {
    return otpSuccess(identified);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? checkSuccess,
    TResult? Function(bool identified)? otpSuccess,
    TResult? Function()? success,
    TResult? Function(ErrorHandler e)? error,
  }) {
    return otpSuccess?.call(identified);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? checkSuccess,
    TResult Function(bool identified)? otpSuccess,
    TResult Function()? success,
    TResult Function(ErrorHandler e)? error,
    required TResult orElse(),
  }) {
    if (otpSuccess != null) {
      return otpSuccess(identified);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordLoading value) loading,
    required TResult Function(ForgotPasswordCheckSuccess value) checkSuccess,
    required TResult Function(ForgotPasswordOtpSuccess value) otpSuccess,
    required TResult Function(ForgotPasswordSuccess value) success,
    required TResult Function(ForgotPasswordError value) error,
  }) {
    return otpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInitial value)? initial,
    TResult? Function(ForgotPasswordLoading value)? loading,
    TResult? Function(ForgotPasswordCheckSuccess value)? checkSuccess,
    TResult? Function(ForgotPasswordOtpSuccess value)? otpSuccess,
    TResult? Function(ForgotPasswordSuccess value)? success,
    TResult? Function(ForgotPasswordError value)? error,
  }) {
    return otpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordLoading value)? loading,
    TResult Function(ForgotPasswordCheckSuccess value)? checkSuccess,
    TResult Function(ForgotPasswordOtpSuccess value)? otpSuccess,
    TResult Function(ForgotPasswordSuccess value)? success,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) {
    if (otpSuccess != null) {
      return otpSuccess(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordOtpSuccess implements ForgotPasswordState {
  const factory ForgotPasswordOtpSuccess({required final bool identified}) =
      _$ForgotPasswordOtpSuccessImpl;

  bool get identified;
  @JsonKey(ignore: true)
  _$$ForgotPasswordOtpSuccessImplCopyWith<_$ForgotPasswordOtpSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordSuccessImplCopyWith<$Res> {
  factory _$$ForgotPasswordSuccessImplCopyWith(
          _$ForgotPasswordSuccessImpl value,
          $Res Function(_$ForgotPasswordSuccessImpl) then) =
      __$$ForgotPasswordSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordSuccessImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordSuccessImpl>
    implements _$$ForgotPasswordSuccessImplCopyWith<$Res> {
  __$$ForgotPasswordSuccessImplCopyWithImpl(_$ForgotPasswordSuccessImpl _value,
      $Res Function(_$ForgotPasswordSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasswordSuccessImpl implements ForgotPasswordSuccess {
  const _$ForgotPasswordSuccessImpl();

  @override
  String toString() {
    return 'ForgotPasswordState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) checkSuccess,
    required TResult Function(bool identified) otpSuccess,
    required TResult Function() success,
    required TResult Function(ErrorHandler e) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? checkSuccess,
    TResult? Function(bool identified)? otpSuccess,
    TResult? Function()? success,
    TResult? Function(ErrorHandler e)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? checkSuccess,
    TResult Function(bool identified)? otpSuccess,
    TResult Function()? success,
    TResult Function(ErrorHandler e)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordLoading value) loading,
    required TResult Function(ForgotPasswordCheckSuccess value) checkSuccess,
    required TResult Function(ForgotPasswordOtpSuccess value) otpSuccess,
    required TResult Function(ForgotPasswordSuccess value) success,
    required TResult Function(ForgotPasswordError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInitial value)? initial,
    TResult? Function(ForgotPasswordLoading value)? loading,
    TResult? Function(ForgotPasswordCheckSuccess value)? checkSuccess,
    TResult? Function(ForgotPasswordOtpSuccess value)? otpSuccess,
    TResult? Function(ForgotPasswordSuccess value)? success,
    TResult? Function(ForgotPasswordError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordLoading value)? loading,
    TResult Function(ForgotPasswordCheckSuccess value)? checkSuccess,
    TResult Function(ForgotPasswordOtpSuccess value)? otpSuccess,
    TResult Function(ForgotPasswordSuccess value)? success,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordSuccess implements ForgotPasswordState {
  const factory ForgotPasswordSuccess() = _$ForgotPasswordSuccessImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordErrorImplCopyWith<$Res> {
  factory _$$ForgotPasswordErrorImplCopyWith(_$ForgotPasswordErrorImpl value,
          $Res Function(_$ForgotPasswordErrorImpl) then) =
      __$$ForgotPasswordErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler e});
}

/// @nodoc
class __$$ForgotPasswordErrorImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordErrorImpl>
    implements _$$ForgotPasswordErrorImplCopyWith<$Res> {
  __$$ForgotPasswordErrorImplCopyWithImpl(_$ForgotPasswordErrorImpl _value,
      $Res Function(_$ForgotPasswordErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$ForgotPasswordErrorImpl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordErrorImpl implements ForgotPasswordError {
  const _$ForgotPasswordErrorImpl(this.e);

  @override
  final ErrorHandler e;

  @override
  String toString() {
    return 'ForgotPasswordState.error(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordErrorImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordErrorImplCopyWith<_$ForgotPasswordErrorImpl> get copyWith =>
      __$$ForgotPasswordErrorImplCopyWithImpl<_$ForgotPasswordErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) checkSuccess,
    required TResult Function(bool identified) otpSuccess,
    required TResult Function() success,
    required TResult Function(ErrorHandler e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? checkSuccess,
    TResult? Function(bool identified)? otpSuccess,
    TResult? Function()? success,
    TResult? Function(ErrorHandler e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? checkSuccess,
    TResult Function(bool identified)? otpSuccess,
    TResult Function()? success,
    TResult Function(ErrorHandler e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordLoading value) loading,
    required TResult Function(ForgotPasswordCheckSuccess value) checkSuccess,
    required TResult Function(ForgotPasswordOtpSuccess value) otpSuccess,
    required TResult Function(ForgotPasswordSuccess value) success,
    required TResult Function(ForgotPasswordError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInitial value)? initial,
    TResult? Function(ForgotPasswordLoading value)? loading,
    TResult? Function(ForgotPasswordCheckSuccess value)? checkSuccess,
    TResult? Function(ForgotPasswordOtpSuccess value)? otpSuccess,
    TResult? Function(ForgotPasswordSuccess value)? success,
    TResult? Function(ForgotPasswordError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordLoading value)? loading,
    TResult Function(ForgotPasswordCheckSuccess value)? checkSuccess,
    TResult Function(ForgotPasswordOtpSuccess value)? otpSuccess,
    TResult Function(ForgotPasswordSuccess value)? success,
    TResult Function(ForgotPasswordError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordError implements ForgotPasswordState {
  const factory ForgotPasswordError(final ErrorHandler e) =
      _$ForgotPasswordErrorImpl;

  ErrorHandler get e;
  @JsonKey(ignore: true)
  _$$ForgotPasswordErrorImplCopyWith<_$ForgotPasswordErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
