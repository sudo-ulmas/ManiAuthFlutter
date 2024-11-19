part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.buttonPressed({
    required String username,
    required String password,
  }) = _LoginButtonPressed;
}
