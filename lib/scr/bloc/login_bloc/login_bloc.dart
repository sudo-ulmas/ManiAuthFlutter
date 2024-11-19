import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mani_auth_plugin/scr/model/error_handler.dart';
import 'package:mani_auth_plugin/scr/repository/auth_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._authRepository) : super(const LoginState.initial()) {
    on<_LoginButtonPressed>(_login);
  }

  final AuthRepository _authRepository;

  Future<void> _login(
    _LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.inProgress());
    final result = await _authRepository.login(
      username: event.username,
      password: event.password,
    );
    final error = result.$1;
    final phoneNumber = result.$2;
    if (error != null) {
      emit(LoginState.error(ErrorHandler(error)));
      return;
    }
    emit(LoginState.success(phoneNumber!));
  }
}
