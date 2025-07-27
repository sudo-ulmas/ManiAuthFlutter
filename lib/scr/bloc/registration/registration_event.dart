part of 'registration_bloc.dart';

@freezed
abstract class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.phoneSubmitted(String phoneNumber) =
      _RegistrationPhoneSubmitted;

  const factory RegistrationEvent.loginPasswordSubmitted({
    required String phoneNumber,
    required String login,
    required String password,
    required String secondPassword,
  }) = _RegistrationLoginPasswordSubmitted;
}
