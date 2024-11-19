import 'package:dio/dio.dart';
import 'package:mani_auth_plugin/scr/model/auth_model.dart';
import 'package:mani_auth_plugin/scr/util/dio_client.dart';

class AuthRepository {
  AuthRepository(this.client);

  final DioClient client;

  Future<int?> verifyRegistrationOtp(
    String smsCode,
    String phoneNumber,
  ) async {
    final response = await BaseApiHandler.request(
      () => client.dio.post(
        RemotePath.authVerify,
        data: {
          'phoneNumber': phoneNumber,
          'otp': smsCode,
          'state': 0,
        },
      ),
    );
    return response.$1;
  }

  Future<int?> check(String phoneNumber) async {
    final response = await BaseApiHandler.request(
      () => client.dio
          .post(RemotePath.authCheck, data: {'phoneNumber': phoneNumber}),
    );
    return response.$1;
  }

  Future<int?> resetIdentify({
    required String token,
    required String phoneNumber,
  }) async {
    final (error, _) = await BaseApiHandler.request(
      () => client.dio.post(
        RemotePath.resetIdentify,
        data: {
          'phoneNumber': phoneNumber,
          'code': token,
        },
      ),
    );
    return error;
  }

  Future<int?> identify(String myIdToken, String? accessToken) async {
    final response = await BaseApiHandler.request(
      () => client.dio.post(
        RemotePath.identify,
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken',
          },
        ),
        data: {
          'code': myIdToken,
        },
      ),
    );
    return response.$1;
  }

  Future<int?> register({
    required String phoneNumber,
    required String login,
    required String password,
  }) async {
    final response = await BaseApiHandler.request(
      () => client.dio.post(
        RemotePath.register,
        data: {
          'phoneNumber': phoneNumber,
          'username': login,
          'password': password,
        },
      ),
    );
    return response.$1;
  }

  Future<(int?, String?)> login({
    required String username,
    required String password,
  }) async {
    final (error, response) = await BaseApiHandler.request(
      () => client.dio.post<Map<String, dynamic>>(
        RemotePath.login,
        data: {
          'username': username,
          'password': password,
        },
      ),
    );
    if (error != null) {
      return (error, null);
    }
    return (null, response?['phoneNumber']?.toString());
  }

  Future<(int?, AuthModel?)> verifyLoginOtp(
    String otp,
    String phoneNumber,
  ) async {
    final (error, data) = await BaseApiHandler.request(
      () => client.dio.post<Map<String, dynamic>>(
        RemotePath.authVerify,
        data: {
          'phoneNumber': phoneNumber,
          'otp': otp,
          'state': 1,
        },
      ),
    );
    if (error != null) {
      return (error, null);
    }
    final authModel = AuthModel.fromJson(data!);
    // await _tokenRepository.saveAccessToken(authModel.accessToken);
    // await _tokenRepository.saveRefreshToken(authModel.refreshToken);
    // _authController.add(AuthStatus.authenticated);
    return (null, authModel);
  }

  Future<int?> resendOtp(String phoneNumber, int state) async {
    final response = await BaseApiHandler.request(
      () => client.dio.post<Map<String, dynamic>>(
        RemotePath.authOtpResend,
        data: {
          'phoneNumber': phoneNumber,
          'state': state,
        },
      ),
    );
    return response.$1;
  }

  Future<int?> checkResetPassword(String phoneNumber) async {
    final (error, _) = await BaseApiHandler.request(
      () => client.dio.post(
        RemotePath.resetCheck,
        data: {
          'phoneNumber': phoneNumber,
        },
      ),
    );
    return error;
  }

  Future<(int?, bool?)> verifyResetOtp({
    required String phoneNumber,
    required String otp,
  }) async {
    final (error, data) = await BaseApiHandler.request(
      () => client.dio.post(
        RemotePath.resetVerify,
        data: {
          'code': otp,
          'phoneNumber': phoneNumber,
        },
      ),
    );
    if (error != null) {
      return (error, null);
    }
    return (null, data!['identified'] as bool);
  }

  Future<int?> resetPassword({
    required String password,
    required String passwordCp,
    required String phoneNumber,
  }) async {
    final (error, _) = await BaseApiHandler.request(
      () => client.dio.post(
        RemotePath.resetConfirm,
        data: {
          'phoneNumber': phoneNumber,
          'newPassword': password,
          'confirmPassword': passwordCp,
        },
      ),
    );
    return error;
  }
}
