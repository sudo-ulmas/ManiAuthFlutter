part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.phoneSubmitted(String phoneNumber) =
      _ForgotPasswordPhoneSubmitted;
  const factory ForgotPasswordEvent.otpSubmitted(String otp) =
      _ForgotPasswordOtpSubmitted;
  const factory ForgotPasswordEvent.resendOtpRequested() =
      _ForgotPasswordResendOtpRequested;

  const factory ForgotPasswordEvent.myIdIdentified() =
      _ForgotPasswordMyIdIdentified;
  const factory ForgotPasswordEvent.newPasswordSubmittted({
    required String password,
    required String passwordCp,
  }) = _ForgotPasswordNewPasswordSubmitted;
}
