part of 'my_id_bloc.dart';

enum MyIdAuthStatus {
  initial,
  authenticated,
  error,
  loading,
}

@freezed
class MyIdState with _$MyIdState {
  const factory MyIdState({
    required String passportId,
    required bool dataIsValid,
    @Default(ResidenceType.resident) ResidenceType residencyType,
    @Default('') String error,
    DateTime? dateOfBirth,
    @Default(MyIdAuthStatus.initial) MyIdAuthStatus authStatus,
  }) = _MyIdState;
}
