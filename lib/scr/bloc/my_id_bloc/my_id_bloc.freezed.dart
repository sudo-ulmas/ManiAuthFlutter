// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_id_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyIdEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyIdEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyIdEvent()';
}


}

/// @nodoc
class $MyIdEventCopyWith<$Res>  {
$MyIdEventCopyWith(MyIdEvent _, $Res Function(MyIdEvent) __);
}


/// @nodoc


class _MyIdPassportIdChanged implements MyIdEvent {
  const _MyIdPassportIdChanged(this.passportId);
  

 final  String passportId;

/// Create a copy of MyIdEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyIdPassportIdChangedCopyWith<_MyIdPassportIdChanged> get copyWith => __$MyIdPassportIdChangedCopyWithImpl<_MyIdPassportIdChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyIdPassportIdChanged&&(identical(other.passportId, passportId) || other.passportId == passportId));
}


@override
int get hashCode => Object.hash(runtimeType,passportId);

@override
String toString() {
  return 'MyIdEvent.passportIdChanged(passportId: $passportId)';
}


}

/// @nodoc
abstract mixin class _$MyIdPassportIdChangedCopyWith<$Res> implements $MyIdEventCopyWith<$Res> {
  factory _$MyIdPassportIdChangedCopyWith(_MyIdPassportIdChanged value, $Res Function(_MyIdPassportIdChanged) _then) = __$MyIdPassportIdChangedCopyWithImpl;
@useResult
$Res call({
 String passportId
});




}
/// @nodoc
class __$MyIdPassportIdChangedCopyWithImpl<$Res>
    implements _$MyIdPassportIdChangedCopyWith<$Res> {
  __$MyIdPassportIdChangedCopyWithImpl(this._self, this._then);

  final _MyIdPassportIdChanged _self;
  final $Res Function(_MyIdPassportIdChanged) _then;

/// Create a copy of MyIdEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? passportId = null,}) {
  return _then(_MyIdPassportIdChanged(
null == passportId ? _self.passportId : passportId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _MyIdDateOfBirthChanged implements MyIdEvent {
  const _MyIdDateOfBirthChanged(this.dateOfBirth);
  

 final  DateTime? dateOfBirth;

/// Create a copy of MyIdEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyIdDateOfBirthChangedCopyWith<_MyIdDateOfBirthChanged> get copyWith => __$MyIdDateOfBirthChangedCopyWithImpl<_MyIdDateOfBirthChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyIdDateOfBirthChanged&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth));
}


@override
int get hashCode => Object.hash(runtimeType,dateOfBirth);

@override
String toString() {
  return 'MyIdEvent.dateOfBirthChanged(dateOfBirth: $dateOfBirth)';
}


}

/// @nodoc
abstract mixin class _$MyIdDateOfBirthChangedCopyWith<$Res> implements $MyIdEventCopyWith<$Res> {
  factory _$MyIdDateOfBirthChangedCopyWith(_MyIdDateOfBirthChanged value, $Res Function(_MyIdDateOfBirthChanged) _then) = __$MyIdDateOfBirthChangedCopyWithImpl;
@useResult
$Res call({
 DateTime? dateOfBirth
});




}
/// @nodoc
class __$MyIdDateOfBirthChangedCopyWithImpl<$Res>
    implements _$MyIdDateOfBirthChangedCopyWith<$Res> {
  __$MyIdDateOfBirthChangedCopyWithImpl(this._self, this._then);

  final _MyIdDateOfBirthChanged _self;
  final $Res Function(_MyIdDateOfBirthChanged) _then;

/// Create a copy of MyIdEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dateOfBirth = freezed,}) {
  return _then(_MyIdDateOfBirthChanged(
freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc


class _MyIdResidencyChanged implements MyIdEvent {
  const _MyIdResidencyChanged({required this.resident});
  

 final  bool resident;

/// Create a copy of MyIdEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyIdResidencyChangedCopyWith<_MyIdResidencyChanged> get copyWith => __$MyIdResidencyChangedCopyWithImpl<_MyIdResidencyChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyIdResidencyChanged&&(identical(other.resident, resident) || other.resident == resident));
}


@override
int get hashCode => Object.hash(runtimeType,resident);

@override
String toString() {
  return 'MyIdEvent.residencyChanged(resident: $resident)';
}


}

/// @nodoc
abstract mixin class _$MyIdResidencyChangedCopyWith<$Res> implements $MyIdEventCopyWith<$Res> {
  factory _$MyIdResidencyChangedCopyWith(_MyIdResidencyChanged value, $Res Function(_MyIdResidencyChanged) _then) = __$MyIdResidencyChangedCopyWithImpl;
@useResult
$Res call({
 bool resident
});




}
/// @nodoc
class __$MyIdResidencyChangedCopyWithImpl<$Res>
    implements _$MyIdResidencyChangedCopyWith<$Res> {
  __$MyIdResidencyChangedCopyWithImpl(this._self, this._then);

  final _MyIdResidencyChanged _self;
  final $Res Function(_MyIdResidencyChanged) _then;

/// Create a copy of MyIdEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? resident = null,}) {
  return _then(_MyIdResidencyChanged(
resident: null == resident ? _self.resident : resident // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _MyIdContinueButtonTapped implements MyIdEvent {
  const _MyIdContinueButtonTapped();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyIdContinueButtonTapped);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyIdEvent.continueButtonTapped()';
}


}




/// @nodoc


class _MyIdInitialize implements MyIdEvent {
  const _MyIdInitialize({this.phoneNumber, this.accessToken});
  

 final  String? phoneNumber;
 final  String? accessToken;

/// Create a copy of MyIdEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyIdInitializeCopyWith<_MyIdInitialize> get copyWith => __$MyIdInitializeCopyWithImpl<_MyIdInitialize>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyIdInitialize&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,accessToken);

@override
String toString() {
  return 'MyIdEvent.initialize(phoneNumber: $phoneNumber, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$MyIdInitializeCopyWith<$Res> implements $MyIdEventCopyWith<$Res> {
  factory _$MyIdInitializeCopyWith(_MyIdInitialize value, $Res Function(_MyIdInitialize) _then) = __$MyIdInitializeCopyWithImpl;
@useResult
$Res call({
 String? phoneNumber, String? accessToken
});




}
/// @nodoc
class __$MyIdInitializeCopyWithImpl<$Res>
    implements _$MyIdInitializeCopyWith<$Res> {
  __$MyIdInitializeCopyWithImpl(this._self, this._then);

  final _MyIdInitialize _self;
  final $Res Function(_MyIdInitialize) _then;

/// Create a copy of MyIdEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = freezed,Object? accessToken = freezed,}) {
  return _then(_MyIdInitialize(
phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$MyIdState {

 String get passportId; bool get dataIsValid; ResidenceType get residencyType; String get error; DateTime? get dateOfBirth; MyIdAuthStatus get authStatus; String? get phoneNumber; String? get accessToken;
/// Create a copy of MyIdState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyIdStateCopyWith<MyIdState> get copyWith => _$MyIdStateCopyWithImpl<MyIdState>(this as MyIdState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyIdState&&(identical(other.passportId, passportId) || other.passportId == passportId)&&(identical(other.dataIsValid, dataIsValid) || other.dataIsValid == dataIsValid)&&(identical(other.residencyType, residencyType) || other.residencyType == residencyType)&&(identical(other.error, error) || other.error == error)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.authStatus, authStatus) || other.authStatus == authStatus)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}


@override
int get hashCode => Object.hash(runtimeType,passportId,dataIsValid,residencyType,error,dateOfBirth,authStatus,phoneNumber,accessToken);

@override
String toString() {
  return 'MyIdState(passportId: $passportId, dataIsValid: $dataIsValid, residencyType: $residencyType, error: $error, dateOfBirth: $dateOfBirth, authStatus: $authStatus, phoneNumber: $phoneNumber, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $MyIdStateCopyWith<$Res>  {
  factory $MyIdStateCopyWith(MyIdState value, $Res Function(MyIdState) _then) = _$MyIdStateCopyWithImpl;
@useResult
$Res call({
 String passportId, bool dataIsValid, ResidenceType residencyType, String error, DateTime? dateOfBirth, MyIdAuthStatus authStatus, String? phoneNumber, String? accessToken
});




}
/// @nodoc
class _$MyIdStateCopyWithImpl<$Res>
    implements $MyIdStateCopyWith<$Res> {
  _$MyIdStateCopyWithImpl(this._self, this._then);

  final MyIdState _self;
  final $Res Function(MyIdState) _then;

/// Create a copy of MyIdState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? passportId = null,Object? dataIsValid = null,Object? residencyType = null,Object? error = null,Object? dateOfBirth = freezed,Object? authStatus = null,Object? phoneNumber = freezed,Object? accessToken = freezed,}) {
  return _then(_self.copyWith(
passportId: null == passportId ? _self.passportId : passportId // ignore: cast_nullable_to_non_nullable
as String,dataIsValid: null == dataIsValid ? _self.dataIsValid : dataIsValid // ignore: cast_nullable_to_non_nullable
as bool,residencyType: null == residencyType ? _self.residencyType : residencyType // ignore: cast_nullable_to_non_nullable
as ResidenceType,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,authStatus: null == authStatus ? _self.authStatus : authStatus // ignore: cast_nullable_to_non_nullable
as MyIdAuthStatus,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _MyIdState implements MyIdState {
  const _MyIdState({required this.passportId, required this.dataIsValid, this.residencyType = ResidenceType.resident, this.error = '', this.dateOfBirth, this.authStatus = MyIdAuthStatus.initial, this.phoneNumber, this.accessToken});
  

@override final  String passportId;
@override final  bool dataIsValid;
@override@JsonKey() final  ResidenceType residencyType;
@override@JsonKey() final  String error;
@override final  DateTime? dateOfBirth;
@override@JsonKey() final  MyIdAuthStatus authStatus;
@override final  String? phoneNumber;
@override final  String? accessToken;

/// Create a copy of MyIdState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyIdStateCopyWith<_MyIdState> get copyWith => __$MyIdStateCopyWithImpl<_MyIdState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyIdState&&(identical(other.passportId, passportId) || other.passportId == passportId)&&(identical(other.dataIsValid, dataIsValid) || other.dataIsValid == dataIsValid)&&(identical(other.residencyType, residencyType) || other.residencyType == residencyType)&&(identical(other.error, error) || other.error == error)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.authStatus, authStatus) || other.authStatus == authStatus)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}


@override
int get hashCode => Object.hash(runtimeType,passportId,dataIsValid,residencyType,error,dateOfBirth,authStatus,phoneNumber,accessToken);

@override
String toString() {
  return 'MyIdState(passportId: $passportId, dataIsValid: $dataIsValid, residencyType: $residencyType, error: $error, dateOfBirth: $dateOfBirth, authStatus: $authStatus, phoneNumber: $phoneNumber, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$MyIdStateCopyWith<$Res> implements $MyIdStateCopyWith<$Res> {
  factory _$MyIdStateCopyWith(_MyIdState value, $Res Function(_MyIdState) _then) = __$MyIdStateCopyWithImpl;
@override @useResult
$Res call({
 String passportId, bool dataIsValid, ResidenceType residencyType, String error, DateTime? dateOfBirth, MyIdAuthStatus authStatus, String? phoneNumber, String? accessToken
});




}
/// @nodoc
class __$MyIdStateCopyWithImpl<$Res>
    implements _$MyIdStateCopyWith<$Res> {
  __$MyIdStateCopyWithImpl(this._self, this._then);

  final _MyIdState _self;
  final $Res Function(_MyIdState) _then;

/// Create a copy of MyIdState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? passportId = null,Object? dataIsValid = null,Object? residencyType = null,Object? error = null,Object? dateOfBirth = freezed,Object? authStatus = null,Object? phoneNumber = freezed,Object? accessToken = freezed,}) {
  return _then(_MyIdState(
passportId: null == passportId ? _self.passportId : passportId // ignore: cast_nullable_to_non_nullable
as String,dataIsValid: null == dataIsValid ? _self.dataIsValid : dataIsValid // ignore: cast_nullable_to_non_nullable
as bool,residencyType: null == residencyType ? _self.residencyType : residencyType // ignore: cast_nullable_to_non_nullable
as ResidenceType,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,authStatus: null == authStatus ? _self.authStatus : authStatus // ignore: cast_nullable_to_non_nullable
as MyIdAuthStatus,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
