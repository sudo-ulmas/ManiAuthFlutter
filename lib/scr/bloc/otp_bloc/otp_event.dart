part of 'otp_bloc.dart';

@freezed
class OtpEvent with _$OtpEvent {
  const factory OtpEvent.submittedRegistration({
    required String otp,
    required String phoneNumber,
  }) = _OtpSubmittedRegistration;
  const factory OtpEvent.submittedLogin({
    required String otp,
    required String phoneNumber,
  }) = _OtpSubmittedLogin;
  const factory OtpEvent.otpResendRequested(String phoneNumber, int state) =
      _OtpResendRequested;
}
