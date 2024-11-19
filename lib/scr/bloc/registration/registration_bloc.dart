import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mani_auth_plugin/scr/model/error_handler.dart';
import 'package:mani_auth_plugin/scr/repository/auth_repository.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(this._authRepository)
      : super(const RegistrationState.initial()) {
    on<_RegistrationPhoneSubmitted>(
      (event, emit) => _requestSmsCode(event.phoneNumber, emit),
    );
    on<_RegistrationLoginPasswordSubmitted>(_register);
  }

  final AuthRepository _authRepository;

  Future<void> _requestSmsCode(
    String phoneNumber,
    Emitter<RegistrationState> emit,
  ) async {
    emit(const RegistrationState.inProgress());
    final result = await _authRepository.check(phoneNumber);
    if (result != null) {
      emit(RegistrationState.error(ErrorHandler(result)));
      return;
    }
    emit(RegistrationState.checkSuccess(phoneNumber));
  }

  Future<void> _register(
    _RegistrationLoginPasswordSubmitted event,
    Emitter<RegistrationState> emit,
  ) async {
    if (event.password != event.secondPassword) {
      emit(const RegistrationState.error(ErrorHandler(20029)));
      return;
    }
    emit(const RegistrationState.inProgress());

    final result = await _authRepository.register(
      login: event.login,
      password: event.password,
      phoneNumber: event.phoneNumber,
    );
    if (result != null) {
      emit(RegistrationState.error(ErrorHandler(result)));
      return;
    }

    emit(const RegistrationState.registrationSuccess());
  }
}
