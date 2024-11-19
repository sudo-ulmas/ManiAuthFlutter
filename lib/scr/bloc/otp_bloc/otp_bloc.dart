import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mani_auth_plugin/scr/model/auth_model.dart';
import 'package:mani_auth_plugin/scr/model/error_handler.dart';
import 'package:mani_auth_plugin/scr/repository/auth_repository.dart';

part 'otp_event.dart';
part 'otp_state.dart';
part 'otp_bloc.freezed.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc(this._authRepository) : super(const OtpState.initial()) {
    on<_OtpSubmittedLogin>(_sendLoginOtp);
    on<_OtpSubmittedRegistration>(_sendRegistrationOtp);
    on<_OtpResendRequested>(_resendOtp);
  }

  final AuthRepository _authRepository;

  Future<void> _resendOtp(
    _OtpResendRequested event,
    Emitter<OtpState> emit,
  ) async {
    emit(const OtpState.inProgress());
    final result =
        await _authRepository.resendOtp(event.phoneNumber, event.state);
    if (result != null) {
      emit(OtpState.error(ErrorHandler(result)));
      return;
    }
    emit(const OtpState.resendSuccess());
  }

  Future<void> _sendLoginOtp(
    _OtpSubmittedLogin event,
    Emitter<OtpState> emit,
  ) async {
    emit(const OtpState.inProgress());
    final (error, authModel) =
        await _authRepository.verifyLoginOtp(event.otp, event.phoneNumber);
    if (error != null) {
      emit(OtpState.error(ErrorHandler(error)));
      return;
    }
    emit(OtpState.success(authModel));
  }

  Future<void> _sendRegistrationOtp(
    _OtpSubmittedRegistration event,
    Emitter<OtpState> emit,
  ) async {
    emit(const OtpState.inProgress());
    final result = await _authRepository.verifyRegistrationOtp(
      event.otp,
      event.phoneNumber,
    );
    if (result != null) {
      emit(OtpState.error(ErrorHandler(result)));
      return;
    }
    emit(const OtpState.success(null));
  }
}
