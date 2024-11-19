import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mani_auth_plugin/scr/model/error_handler.dart';
import 'package:mani_auth_plugin/scr/repository/auth_repository.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc(this._authRepository)
      : super(const ForgotPasswordState.initial()) {
    on<_ForgotPasswordPhoneSubmitted>(_check);
    on<_ForgotPasswordOtpSubmitted>(_verify);
    on<_ForgotPasswordNewPasswordSubmitted>(_confirm);
  }

  final AuthRepository _authRepository;
  late String _phoneNumber;

  Future<void> _check(
    _ForgotPasswordPhoneSubmitted event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(const ForgotPasswordState.loading());
    final error = await _authRepository.checkResetPassword(event.phoneNumber);
    if (error != null) {
      emit(ForgotPasswordState.error(ErrorHandler(error)));
      return;
    }
    _phoneNumber = event.phoneNumber;
    emit(ForgotPasswordState.checkSuccess(event.phoneNumber));
  }

  Future<void> _verify(
    _ForgotPasswordOtpSubmitted event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(const ForgotPasswordState.loading());
    final (error, identified) = await _authRepository.verifyResetOtp(
      otp: event.otp,
      phoneNumber: _phoneNumber,
    );
    if (error != null) {
      emit(ForgotPasswordState.error(ErrorHandler(error)));
      return;
    }

    emit(ForgotPasswordState.otpSuccess(identified: identified!));
  }

  Future<void> _confirm(
    _ForgotPasswordNewPasswordSubmitted event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(const ForgotPasswordState.loading());
    final error = await _authRepository.resetPassword(
      phoneNumber: _phoneNumber,
      password: event.password,
      passwordCp: event.passwordCp,
    );
    if (error != null) {
      emit(ForgotPasswordState.error(ErrorHandler(error)));
      return;
    }

    emit(const ForgotPasswordState.success());
  }
}
