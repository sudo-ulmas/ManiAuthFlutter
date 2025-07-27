// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpEvent {

 String get phoneNumber;
/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpEventCopyWith<OtpEvent> get copyWith => _$OtpEventCopyWithImpl<OtpEvent>(this as OtpEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpEvent&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'OtpEvent(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $OtpEventCopyWith<$Res>  {
  factory $OtpEventCopyWith(OtpEvent value, $Res Function(OtpEvent) _then) = _$OtpEventCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class _$OtpEventCopyWithImpl<$Res>
    implements $OtpEventCopyWith<$Res> {
  _$OtpEventCopyWithImpl(this._self, this._then);

  final OtpEvent _self;
  final $Res Function(OtpEvent) _then;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _OtpSubmittedRegistration implements OtpEvent {
  const _OtpSubmittedRegistration({required this.otp, required this.phoneNumber});
  

 final  String otp;
@override final  String phoneNumber;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpSubmittedRegistrationCopyWith<_OtpSubmittedRegistration> get copyWith => __$OtpSubmittedRegistrationCopyWithImpl<_OtpSubmittedRegistration>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpSubmittedRegistration&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,otp,phoneNumber);

@override
String toString() {
  return 'OtpEvent.submittedRegistration(otp: $otp, phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class _$OtpSubmittedRegistrationCopyWith<$Res> implements $OtpEventCopyWith<$Res> {
  factory _$OtpSubmittedRegistrationCopyWith(_OtpSubmittedRegistration value, $Res Function(_OtpSubmittedRegistration) _then) = __$OtpSubmittedRegistrationCopyWithImpl;
@override @useResult
$Res call({
 String otp, String phoneNumber
});




}
/// @nodoc
class __$OtpSubmittedRegistrationCopyWithImpl<$Res>
    implements _$OtpSubmittedRegistrationCopyWith<$Res> {
  __$OtpSubmittedRegistrationCopyWithImpl(this._self, this._then);

  final _OtpSubmittedRegistration _self;
  final $Res Function(_OtpSubmittedRegistration) _then;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? otp = null,Object? phoneNumber = null,}) {
  return _then(_OtpSubmittedRegistration(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _OtpSubmittedLogin implements OtpEvent {
  const _OtpSubmittedLogin({required this.otp, required this.phoneNumber});
  

 final  String otp;
@override final  String phoneNumber;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpSubmittedLoginCopyWith<_OtpSubmittedLogin> get copyWith => __$OtpSubmittedLoginCopyWithImpl<_OtpSubmittedLogin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpSubmittedLogin&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,otp,phoneNumber);

@override
String toString() {
  return 'OtpEvent.submittedLogin(otp: $otp, phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class _$OtpSubmittedLoginCopyWith<$Res> implements $OtpEventCopyWith<$Res> {
  factory _$OtpSubmittedLoginCopyWith(_OtpSubmittedLogin value, $Res Function(_OtpSubmittedLogin) _then) = __$OtpSubmittedLoginCopyWithImpl;
@override @useResult
$Res call({
 String otp, String phoneNumber
});




}
/// @nodoc
class __$OtpSubmittedLoginCopyWithImpl<$Res>
    implements _$OtpSubmittedLoginCopyWith<$Res> {
  __$OtpSubmittedLoginCopyWithImpl(this._self, this._then);

  final _OtpSubmittedLogin _self;
  final $Res Function(_OtpSubmittedLogin) _then;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? otp = null,Object? phoneNumber = null,}) {
  return _then(_OtpSubmittedLogin(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _OtpResendRequested implements OtpEvent {
  const _OtpResendRequested(this.phoneNumber, this.state);
  

@override final  String phoneNumber;
 final  int state;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpResendRequestedCopyWith<_OtpResendRequested> get copyWith => __$OtpResendRequestedCopyWithImpl<_OtpResendRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpResendRequested&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,state);

@override
String toString() {
  return 'OtpEvent.otpResendRequested(phoneNumber: $phoneNumber, state: $state)';
}


}

/// @nodoc
abstract mixin class _$OtpResendRequestedCopyWith<$Res> implements $OtpEventCopyWith<$Res> {
  factory _$OtpResendRequestedCopyWith(_OtpResendRequested value, $Res Function(_OtpResendRequested) _then) = __$OtpResendRequestedCopyWithImpl;
@override @useResult
$Res call({
 String phoneNumber, int state
});




}
/// @nodoc
class __$OtpResendRequestedCopyWithImpl<$Res>
    implements _$OtpResendRequestedCopyWith<$Res> {
  __$OtpResendRequestedCopyWithImpl(this._self, this._then);

  final _OtpResendRequested _self;
  final $Res Function(_OtpResendRequested) _then;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? state = null,}) {
  return _then(_OtpResendRequested(
null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$OtpState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpState()';
}


}

/// @nodoc
class $OtpStateCopyWith<$Res>  {
$OtpStateCopyWith(OtpState _, $Res Function(OtpState) __);
}


/// @nodoc


class OtpInitial implements OtpState {
  const OtpInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpState.initial()';
}


}




/// @nodoc


class OtpInProgress implements OtpState {
  const OtpInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpState.inProgress()';
}


}




/// @nodoc


class OtpError implements OtpState {
  const OtpError(this.error);
  

 final  ErrorHandler error;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpErrorCopyWith<OtpError> get copyWith => _$OtpErrorCopyWithImpl<OtpError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'OtpState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $OtpErrorCopyWith<$Res> implements $OtpStateCopyWith<$Res> {
  factory $OtpErrorCopyWith(OtpError value, $Res Function(OtpError) _then) = _$OtpErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler error
});




}
/// @nodoc
class _$OtpErrorCopyWithImpl<$Res>
    implements $OtpErrorCopyWith<$Res> {
  _$OtpErrorCopyWithImpl(this._self, this._then);

  final OtpError _self;
  final $Res Function(OtpError) _then;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(OtpError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

/// @nodoc


class OtpSuccess implements OtpState {
  const OtpSuccess(this.authModel);
  

 final  AuthModel? authModel;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpSuccessCopyWith<OtpSuccess> get copyWith => _$OtpSuccessCopyWithImpl<OtpSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpSuccess&&(identical(other.authModel, authModel) || other.authModel == authModel));
}


@override
int get hashCode => Object.hash(runtimeType,authModel);

@override
String toString() {
  return 'OtpState.success(authModel: $authModel)';
}


}

/// @nodoc
abstract mixin class $OtpSuccessCopyWith<$Res> implements $OtpStateCopyWith<$Res> {
  factory $OtpSuccessCopyWith(OtpSuccess value, $Res Function(OtpSuccess) _then) = _$OtpSuccessCopyWithImpl;
@useResult
$Res call({
 AuthModel? authModel
});


$AuthModelCopyWith<$Res>? get authModel;

}
/// @nodoc
class _$OtpSuccessCopyWithImpl<$Res>
    implements $OtpSuccessCopyWith<$Res> {
  _$OtpSuccessCopyWithImpl(this._self, this._then);

  final OtpSuccess _self;
  final $Res Function(OtpSuccess) _then;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? authModel = freezed,}) {
  return _then(OtpSuccess(
freezed == authModel ? _self.authModel : authModel // ignore: cast_nullable_to_non_nullable
as AuthModel?,
  ));
}

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthModelCopyWith<$Res>? get authModel {
    if (_self.authModel == null) {
    return null;
  }

  return $AuthModelCopyWith<$Res>(_self.authModel!, (value) {
    return _then(_self.copyWith(authModel: value));
  });
}
}

/// @nodoc


class OtpResendSuccess implements OtpState {
  const OtpResendSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpResendSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpState.resendSuccess()';
}


}




// dart format on
