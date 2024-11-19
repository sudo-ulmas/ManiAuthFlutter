part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = RegistrationInitial;
  const factory RegistrationState.inProgress() = RegistrationInProgress;
  const factory RegistrationState.error(ErrorHandler error) = RegistrationError;
  const factory RegistrationState.checkSuccess(String phoneNumber) =
      RegistrationCheckSuccess;
  const factory RegistrationState.registrationSuccess() = RegistrationSuccess;
}
