import 'package:freezed_annotation/freezed_annotation.dart';

 
part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

/// {@template auth_model}
/// AuthModel description
/// {@endtemplate}
@freezed
class AuthModel with _$AuthModel {
  /// {@macro auth_model}
  const factory AuthModel({ 
    required String phoneNumber,
    required String refreshToken,
    required String accessToken,
    required String userId,
    required bool identified,
  }) = _AuthModel;
  
    /// Creates a AuthModel from Json map
  factory AuthModel.fromJson(Map<String, dynamic> data) => _$AuthModelFromJson(data);
}

