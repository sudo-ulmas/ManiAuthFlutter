// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegistrationEvent {

 String get phoneNumber;
/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationEventCopyWith<RegistrationEvent> get copyWith => _$RegistrationEventCopyWithImpl<RegistrationEvent>(this as RegistrationEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationEvent&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'RegistrationEvent(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $RegistrationEventCopyWith<$Res>  {
  factory $RegistrationEventCopyWith(RegistrationEvent value, $Res Function(RegistrationEvent) _then) = _$RegistrationEventCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._self, this._then);

  final RegistrationEvent _self;
  final $Res Function(RegistrationEvent) _then;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _RegistrationPhoneSubmitted implements RegistrationEvent {
  const _RegistrationPhoneSubmitted(this.phoneNumber);
  

@override final  String phoneNumber;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegistrationPhoneSubmittedCopyWith<_RegistrationPhoneSubmitted> get copyWith => __$RegistrationPhoneSubmittedCopyWithImpl<_RegistrationPhoneSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegistrationPhoneSubmitted&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'RegistrationEvent.phoneSubmitted(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class _$RegistrationPhoneSubmittedCopyWith<$Res> implements $RegistrationEventCopyWith<$Res> {
  factory _$RegistrationPhoneSubmittedCopyWith(_RegistrationPhoneSubmitted value, $Res Function(_RegistrationPhoneSubmitted) _then) = __$RegistrationPhoneSubmittedCopyWithImpl;
@override @useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class __$RegistrationPhoneSubmittedCopyWithImpl<$Res>
    implements _$RegistrationPhoneSubmittedCopyWith<$Res> {
  __$RegistrationPhoneSubmittedCopyWithImpl(this._self, this._then);

  final _RegistrationPhoneSubmitted _self;
  final $Res Function(_RegistrationPhoneSubmitted) _then;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,}) {
  return _then(_RegistrationPhoneSubmitted(
null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RegistrationLoginPasswordSubmitted implements RegistrationEvent {
  const _RegistrationLoginPasswordSubmitted({required this.phoneNumber, required this.login, required this.password, required this.secondPassword});
  

@override final  String phoneNumber;
 final  String login;
 final  String password;
 final  String secondPassword;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegistrationLoginPasswordSubmittedCopyWith<_RegistrationLoginPasswordSubmitted> get copyWith => __$RegistrationLoginPasswordSubmittedCopyWithImpl<_RegistrationLoginPasswordSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegistrationLoginPasswordSubmitted&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password)&&(identical(other.secondPassword, secondPassword) || other.secondPassword == secondPassword));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,login,password,secondPassword);

@override
String toString() {
  return 'RegistrationEvent.loginPasswordSubmitted(phoneNumber: $phoneNumber, login: $login, password: $password, secondPassword: $secondPassword)';
}


}

/// @nodoc
abstract mixin class _$RegistrationLoginPasswordSubmittedCopyWith<$Res> implements $RegistrationEventCopyWith<$Res> {
  factory _$RegistrationLoginPasswordSubmittedCopyWith(_RegistrationLoginPasswordSubmitted value, $Res Function(_RegistrationLoginPasswordSubmitted) _then) = __$RegistrationLoginPasswordSubmittedCopyWithImpl;
@override @useResult
$Res call({
 String phoneNumber, String login, String password, String secondPassword
});




}
/// @nodoc
class __$RegistrationLoginPasswordSubmittedCopyWithImpl<$Res>
    implements _$RegistrationLoginPasswordSubmittedCopyWith<$Res> {
  __$RegistrationLoginPasswordSubmittedCopyWithImpl(this._self, this._then);

  final _RegistrationLoginPasswordSubmitted _self;
  final $Res Function(_RegistrationLoginPasswordSubmitted) _then;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? login = null,Object? password = null,Object? secondPassword = null,}) {
  return _then(_RegistrationLoginPasswordSubmitted(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,secondPassword: null == secondPassword ? _self.secondPassword : secondPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RegistrationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegistrationState()';
}


}

/// @nodoc
class $RegistrationStateCopyWith<$Res>  {
$RegistrationStateCopyWith(RegistrationState _, $Res Function(RegistrationState) __);
}


/// @nodoc


class RegistrationInitial implements RegistrationState {
  const RegistrationInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegistrationState.initial()';
}


}




/// @nodoc


class RegistrationInProgress implements RegistrationState {
  const RegistrationInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegistrationState.inProgress()';
}


}




/// @nodoc


class RegistrationError implements RegistrationState {
  const RegistrationError(this.error);
  

 final  ErrorHandler error;

/// Create a copy of RegistrationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationErrorCopyWith<RegistrationError> get copyWith => _$RegistrationErrorCopyWithImpl<RegistrationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'RegistrationState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $RegistrationErrorCopyWith<$Res> implements $RegistrationStateCopyWith<$Res> {
  factory $RegistrationErrorCopyWith(RegistrationError value, $Res Function(RegistrationError) _then) = _$RegistrationErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler error
});




}
/// @nodoc
class _$RegistrationErrorCopyWithImpl<$Res>
    implements $RegistrationErrorCopyWith<$Res> {
  _$RegistrationErrorCopyWithImpl(this._self, this._then);

  final RegistrationError _self;
  final $Res Function(RegistrationError) _then;

/// Create a copy of RegistrationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(RegistrationError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

/// @nodoc


class RegistrationCheckSuccess implements RegistrationState {
  const RegistrationCheckSuccess(this.phoneNumber);
  

 final  String phoneNumber;

/// Create a copy of RegistrationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationCheckSuccessCopyWith<RegistrationCheckSuccess> get copyWith => _$RegistrationCheckSuccessCopyWithImpl<RegistrationCheckSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationCheckSuccess&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'RegistrationState.checkSuccess(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $RegistrationCheckSuccessCopyWith<$Res> implements $RegistrationStateCopyWith<$Res> {
  factory $RegistrationCheckSuccessCopyWith(RegistrationCheckSuccess value, $Res Function(RegistrationCheckSuccess) _then) = _$RegistrationCheckSuccessCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class _$RegistrationCheckSuccessCopyWithImpl<$Res>
    implements $RegistrationCheckSuccessCopyWith<$Res> {
  _$RegistrationCheckSuccessCopyWithImpl(this._self, this._then);

  final RegistrationCheckSuccess _self;
  final $Res Function(RegistrationCheckSuccess) _then;

/// Create a copy of RegistrationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,}) {
  return _then(RegistrationCheckSuccess(
null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RegistrationSuccess implements RegistrationState {
  const RegistrationSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegistrationState.registrationSuccess()';
}


}




// dart format on
