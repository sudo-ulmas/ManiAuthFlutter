// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthModel {

 String get phoneNumber; String get refreshToken; String get accessToken; String get userId; bool get identified;
/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthModelCopyWith<AuthModel> get copyWith => _$AuthModelCopyWithImpl<AuthModel>(this as AuthModel, _$identity);

  /// Serializes this AuthModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthModel&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.identified, identified) || other.identified == identified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,refreshToken,accessToken,userId,identified);

@override
String toString() {
  return 'AuthModel(phoneNumber: $phoneNumber, refreshToken: $refreshToken, accessToken: $accessToken, userId: $userId, identified: $identified)';
}


}

/// @nodoc
abstract mixin class $AuthModelCopyWith<$Res>  {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) _then) = _$AuthModelCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, String refreshToken, String accessToken, String userId, bool identified
});




}
/// @nodoc
class _$AuthModelCopyWithImpl<$Res>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._self, this._then);

  final AuthModel _self;
  final $Res Function(AuthModel) _then;

/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,Object? refreshToken = null,Object? accessToken = null,Object? userId = null,Object? identified = null,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,identified: null == identified ? _self.identified : identified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AuthModel implements AuthModel {
  const _AuthModel({required this.phoneNumber, required this.refreshToken, required this.accessToken, required this.userId, required this.identified});
  factory _AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);

@override final  String phoneNumber;
@override final  String refreshToken;
@override final  String accessToken;
@override final  String userId;
@override final  bool identified;

/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthModelCopyWith<_AuthModel> get copyWith => __$AuthModelCopyWithImpl<_AuthModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthModel&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.identified, identified) || other.identified == identified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,refreshToken,accessToken,userId,identified);

@override
String toString() {
  return 'AuthModel(phoneNumber: $phoneNumber, refreshToken: $refreshToken, accessToken: $accessToken, userId: $userId, identified: $identified)';
}


}

/// @nodoc
abstract mixin class _$AuthModelCopyWith<$Res> implements $AuthModelCopyWith<$Res> {
  factory _$AuthModelCopyWith(_AuthModel value, $Res Function(_AuthModel) _then) = __$AuthModelCopyWithImpl;
@override @useResult
$Res call({
 String phoneNumber, String refreshToken, String accessToken, String userId, bool identified
});




}
/// @nodoc
class __$AuthModelCopyWithImpl<$Res>
    implements _$AuthModelCopyWith<$Res> {
  __$AuthModelCopyWithImpl(this._self, this._then);

  final _AuthModel _self;
  final $Res Function(_AuthModel) _then;

/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? refreshToken = null,Object? accessToken = null,Object? userId = null,Object? identified = null,}) {
  return _then(_AuthModel(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,identified: null == identified ? _self.identified : identified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
