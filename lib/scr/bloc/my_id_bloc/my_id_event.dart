part of 'my_id_bloc.dart';

@freezed
class MyIdEvent with _$MyIdEvent {
  const factory MyIdEvent.passportIdChanged(String passportId) = _MyIdPassportIdChanged;
  const factory MyIdEvent.dateOfBirthChanged(DateTime? dateOfBirth) = _MyIdDateOfBirthChanged;

  const factory MyIdEvent.residencyChanged({required bool resident}) = _MyIdResidencyChanged;

  const factory MyIdEvent.continueButtonTapped() = _MyIdContinueButtonTapped;
  const factory MyIdEvent.initialize({String? phoneNumber, String? accessToken}) = _MyIdInitialize;
}
