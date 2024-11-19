part of 'otp_bloc.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState.initial() = OtpInitial;
  const factory OtpState.inProgress() = OtpInProgress;
  const factory OtpState.error(ErrorHandler error) = OtpError;
  const factory OtpState.success(AuthModel? authModel) = OtpSuccess;
  const factory OtpState.resendSuccess() = OtpResendSuccess;
}
