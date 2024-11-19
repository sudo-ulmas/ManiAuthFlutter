// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthModelImpl(
      phoneNumber: json['phoneNumber'] as String,
      refreshToken: json['refreshToken'] as String,
      accessToken: json['accessToken'] as String,
      userId: json['userId'] as String,
      identified: json['identified'] as bool,
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'refreshToken': instance.refreshToken,
      'accessToken': instance.accessToken,
      'userId': instance.userId,
      'identified': instance.identified,
    };
