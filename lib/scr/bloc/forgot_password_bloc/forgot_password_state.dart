part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial() = ForgotPasswordInitial;
  const factory ForgotPasswordState.loading() = ForgotPasswordLoading;
  const factory ForgotPasswordState.checkSuccess(String phoneNumber) =
      ForgotPasswordCheckSuccess;
  const factory ForgotPasswordState.otpSuccess({required bool identified}) =
      ForgotPasswordOtpSuccess;
  const factory ForgotPasswordState.success() = ForgotPasswordSuccess;
  const factory ForgotPasswordState.error(ErrorHandler e) = ForgotPasswordError;
}
