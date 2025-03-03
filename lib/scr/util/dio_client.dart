import 'package:dio/dio.dart';

const String addressDev = 'https://merchant-gateway.yagona.io';
const String addressProd = 'https://merchant.mani.uz';
const String version = 'api/v1';
const String merchantPrefix = 'merchant/';
String _baseUrl(bool isProd) => '${isProd ? addressProd : addressDev}/$version/$merchantPrefix';

class DioClient {
  DioClient(String paymentSystemId, bool isProd)
      : dio = Dio(
          BaseOptions(
            baseUrl: _baseUrl(isProd),
            headers: {
              'payment-system-id': paymentSystemId,
            },
            receiveTimeout: const Duration(seconds: 20),
            connectTimeout: const Duration(seconds: 20),
            followRedirects: false,
            validateStatus: (code) => true,
          ),
        )..interceptors.addAll([
            LogInterceptor(responseBody: true),
          ]);
  final Dio dio;
}

abstract class RemotePath {
  static const login = 'auth/sign/in';
  static const refreshToken = 'auth/sign/refresh-token';
  static const authOtpResend = 'auth/sign/code/resend';
  static const authCheck = 'auth/sign/user/check';
  static const authVerify = 'auth/sign/user/verify';
  static const register = 'auth/sign/up';
  static const userMe = 'user/me';
  static const identify = 'user/identify';
  static const resetCheck = 'auth/password/reset/check';
  static const resetVerify = 'auth/password/reset/verify';
  static const resetConfirm = 'auth/password/reset/confirm';
  static const resetIdentify = 'auth/password/reset/identify';
}

class BaseApiHandler<T> {
  static Future<(int?, Map<String, dynamic>?)> request(
    Future<Response<Map<String, dynamic>>> Function() request,
  ) async {
    try {
      final response = await request();
      if (response.statusCode! >= 300) {
        return (response.statusCode, null);
      }
      final result = response.data ?? {};
      if (result['success'] == false) {
        return ((result['result'] as Map<String, dynamic>)['code'] as int, null);
      }
      final data = (result['result'] as Map<String, dynamic>)['data'];
      if (data is String) {
        if (data.isEmpty) {
          return ((result['result'] as Map<String, dynamic>)['code'] as int, null);
        }
        return (null, {'': ''});
      }
      return (null, data as Map<String, dynamic>);
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.sendTimeout || DioExceptionType.receiveTimeout || DioExceptionType.connectionTimeout:
          return (408, null);
        case _:
          return (1, null);
      }
    } catch (e) {
      return (1, null);
    }
  }
}
