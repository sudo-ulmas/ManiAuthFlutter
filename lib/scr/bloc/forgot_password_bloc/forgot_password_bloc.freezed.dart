// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgotPasswordEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordEvent()';
}


}

/// @nodoc
class $ForgotPasswordEventCopyWith<$Res>  {
$ForgotPasswordEventCopyWith(ForgotPasswordEvent _, $Res Function(ForgotPasswordEvent) __);
}


/// @nodoc


class _ForgotPasswordPhoneSubmitted implements ForgotPasswordEvent {
  const _ForgotPasswordPhoneSubmitted(this.phoneNumber);
  

 final  String phoneNumber;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordPhoneSubmittedCopyWith<_ForgotPasswordPhoneSubmitted> get copyWith => __$ForgotPasswordPhoneSubmittedCopyWithImpl<_ForgotPasswordPhoneSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordPhoneSubmitted&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'ForgotPasswordEvent.phoneSubmitted(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordPhoneSubmittedCopyWith<$Res> implements $ForgotPasswordEventCopyWith<$Res> {
  factory _$ForgotPasswordPhoneSubmittedCopyWith(_ForgotPasswordPhoneSubmitted value, $Res Function(_ForgotPasswordPhoneSubmitted) _then) = __$ForgotPasswordPhoneSubmittedCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class __$ForgotPasswordPhoneSubmittedCopyWithImpl<$Res>
    implements _$ForgotPasswordPhoneSubmittedCopyWith<$Res> {
  __$ForgotPasswordPhoneSubmittedCopyWithImpl(this._self, this._then);

  final _ForgotPasswordPhoneSubmitted _self;
  final $Res Function(_ForgotPasswordPhoneSubmitted) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,}) {
  return _then(_ForgotPasswordPhoneSubmitted(
null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ForgotPasswordOtpSubmitted implements ForgotPasswordEvent {
  const _ForgotPasswordOtpSubmitted(this.otp);
  

 final  String otp;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordOtpSubmittedCopyWith<_ForgotPasswordOtpSubmitted> get copyWith => __$ForgotPasswordOtpSubmittedCopyWithImpl<_ForgotPasswordOtpSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordOtpSubmitted&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,otp);

@override
String toString() {
  return 'ForgotPasswordEvent.otpSubmitted(otp: $otp)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordOtpSubmittedCopyWith<$Res> implements $ForgotPasswordEventCopyWith<$Res> {
  factory _$ForgotPasswordOtpSubmittedCopyWith(_ForgotPasswordOtpSubmitted value, $Res Function(_ForgotPasswordOtpSubmitted) _then) = __$ForgotPasswordOtpSubmittedCopyWithImpl;
@useResult
$Res call({
 String otp
});




}
/// @nodoc
class __$ForgotPasswordOtpSubmittedCopyWithImpl<$Res>
    implements _$ForgotPasswordOtpSubmittedCopyWith<$Res> {
  __$ForgotPasswordOtpSubmittedCopyWithImpl(this._self, this._then);

  final _ForgotPasswordOtpSubmitted _self;
  final $Res Function(_ForgotPasswordOtpSubmitted) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? otp = null,}) {
  return _then(_ForgotPasswordOtpSubmitted(
null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ForgotPasswordResendOtpRequested implements ForgotPasswordEvent {
  const _ForgotPasswordResendOtpRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordResendOtpRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordEvent.resendOtpRequested()';
}


}




/// @nodoc


class _ForgotPasswordMyIdIdentified implements ForgotPasswordEvent {
  const _ForgotPasswordMyIdIdentified();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordMyIdIdentified);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordEvent.myIdIdentified()';
}


}




/// @nodoc


class _ForgotPasswordNewPasswordSubmitted implements ForgotPasswordEvent {
  const _ForgotPasswordNewPasswordSubmitted({required this.password, required this.passwordCp});
  

 final  String password;
 final  String passwordCp;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordNewPasswordSubmittedCopyWith<_ForgotPasswordNewPasswordSubmitted> get copyWith => __$ForgotPasswordNewPasswordSubmittedCopyWithImpl<_ForgotPasswordNewPasswordSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordNewPasswordSubmitted&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordCp, passwordCp) || other.passwordCp == passwordCp));
}


@override
int get hashCode => Object.hash(runtimeType,password,passwordCp);

@override
String toString() {
  return 'ForgotPasswordEvent.newPasswordSubmittted(password: $password, passwordCp: $passwordCp)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordNewPasswordSubmittedCopyWith<$Res> implements $ForgotPasswordEventCopyWith<$Res> {
  factory _$ForgotPasswordNewPasswordSubmittedCopyWith(_ForgotPasswordNewPasswordSubmitted value, $Res Function(_ForgotPasswordNewPasswordSubmitted) _then) = __$ForgotPasswordNewPasswordSubmittedCopyWithImpl;
@useResult
$Res call({
 String password, String passwordCp
});




}
/// @nodoc
class __$ForgotPasswordNewPasswordSubmittedCopyWithImpl<$Res>
    implements _$ForgotPasswordNewPasswordSubmittedCopyWith<$Res> {
  __$ForgotPasswordNewPasswordSubmittedCopyWithImpl(this._self, this._then);

  final _ForgotPasswordNewPasswordSubmitted _self;
  final $Res Function(_ForgotPasswordNewPasswordSubmitted) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,Object? passwordCp = null,}) {
  return _then(_ForgotPasswordNewPasswordSubmitted(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordCp: null == passwordCp ? _self.passwordCp : passwordCp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ForgotPasswordState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState()';
}


}

/// @nodoc
class $ForgotPasswordStateCopyWith<$Res>  {
$ForgotPasswordStateCopyWith(ForgotPasswordState _, $Res Function(ForgotPasswordState) __);
}


/// @nodoc


class ForgotPasswordInitial implements ForgotPasswordState {
  const ForgotPasswordInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState.initial()';
}


}




/// @nodoc


class ForgotPasswordLoading implements ForgotPasswordState {
  const ForgotPasswordLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState.loading()';
}


}




/// @nodoc


class ForgotPasswordCheckSuccess implements ForgotPasswordState {
  const ForgotPasswordCheckSuccess(this.phoneNumber);
  

 final  String phoneNumber;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordCheckSuccessCopyWith<ForgotPasswordCheckSuccess> get copyWith => _$ForgotPasswordCheckSuccessCopyWithImpl<ForgotPasswordCheckSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordCheckSuccess&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'ForgotPasswordState.checkSuccess(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordCheckSuccessCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordCheckSuccessCopyWith(ForgotPasswordCheckSuccess value, $Res Function(ForgotPasswordCheckSuccess) _then) = _$ForgotPasswordCheckSuccessCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class _$ForgotPasswordCheckSuccessCopyWithImpl<$Res>
    implements $ForgotPasswordCheckSuccessCopyWith<$Res> {
  _$ForgotPasswordCheckSuccessCopyWithImpl(this._self, this._then);

  final ForgotPasswordCheckSuccess _self;
  final $Res Function(ForgotPasswordCheckSuccess) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,}) {
  return _then(ForgotPasswordCheckSuccess(
null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ForgotPasswordOtpSuccess implements ForgotPasswordState {
  const ForgotPasswordOtpSuccess({required this.identified});
  

 final  bool identified;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordOtpSuccessCopyWith<ForgotPasswordOtpSuccess> get copyWith => _$ForgotPasswordOtpSuccessCopyWithImpl<ForgotPasswordOtpSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordOtpSuccess&&(identical(other.identified, identified) || other.identified == identified));
}


@override
int get hashCode => Object.hash(runtimeType,identified);

@override
String toString() {
  return 'ForgotPasswordState.otpSuccess(identified: $identified)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordOtpSuccessCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordOtpSuccessCopyWith(ForgotPasswordOtpSuccess value, $Res Function(ForgotPasswordOtpSuccess) _then) = _$ForgotPasswordOtpSuccessCopyWithImpl;
@useResult
$Res call({
 bool identified
});




}
/// @nodoc
class _$ForgotPasswordOtpSuccessCopyWithImpl<$Res>
    implements $ForgotPasswordOtpSuccessCopyWith<$Res> {
  _$ForgotPasswordOtpSuccessCopyWithImpl(this._self, this._then);

  final ForgotPasswordOtpSuccess _self;
  final $Res Function(ForgotPasswordOtpSuccess) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? identified = null,}) {
  return _then(ForgotPasswordOtpSuccess(
identified: null == identified ? _self.identified : identified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ForgotPasswordSuccess implements ForgotPasswordState {
  const ForgotPasswordSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState.success()';
}


}




/// @nodoc


class ForgotPasswordError implements ForgotPasswordState {
  const ForgotPasswordError(this.e);
  

 final  ErrorHandler e;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordErrorCopyWith<ForgotPasswordError> get copyWith => _$ForgotPasswordErrorCopyWithImpl<ForgotPasswordError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordError&&(identical(other.e, e) || other.e == e));
}


@override
int get hashCode => Object.hash(runtimeType,e);

@override
String toString() {
  return 'ForgotPasswordState.error(e: $e)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordErrorCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordErrorCopyWith(ForgotPasswordError value, $Res Function(ForgotPasswordError) _then) = _$ForgotPasswordErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler e
});




}
/// @nodoc
class _$ForgotPasswordErrorCopyWithImpl<$Res>
    implements $ForgotPasswordErrorCopyWith<$Res> {
  _$ForgotPasswordErrorCopyWithImpl(this._self, this._then);

  final ForgotPasswordError _self;
  final $Res Function(ForgotPasswordError) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? e = null,}) {
  return _then(ForgotPasswordError(
null == e ? _self.e : e // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
