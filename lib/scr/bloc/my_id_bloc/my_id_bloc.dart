import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mani_auth_plugin/scr/model/residence_type.dart';
import 'package:mani_auth_plugin/scr/repository/auth_repository.dart';
import 'package:mani_uikit/mani_uikit.dart';
import 'package:myid_wrapper/myid_wrapper.dart';

part 'my_id_bloc.freezed.dart';
part 'my_id_event.dart';
part 'my_id_state.dart';

class MyIdBloc extends Bloc<MyIdEvent, MyIdState> {
  MyIdBloc(this._authRepository) : super(const MyIdState(passportId: '', dataIsValid: false)) {
    on<_MyIdPassportIdChanged>(_changePassportId);
    on<_MyIdDateOfBirthChanged>(_changeDateOfBirth);
    on<_MyIdContinueButtonTapped>((_, emit) => _openCamera(emit));
    on<_MyIdResidencyChanged>(_changeResidency);
    on<_MyIdInitialize>(_initialize);
  }

  final AuthRepository _authRepository;

  Future<void> _initialize(
    _MyIdInitialize event,
    Emitter<MyIdState> emit,
  ) async {
    emit(
      state.copyWith(
        phoneNumber: event.phoneNumber,
        accessToken: event.accessToken,
      ),
    );
  }

  Future<void> _changeResidency(
    _MyIdResidencyChanged event,
    Emitter<MyIdState> emit,
  ) async {
    emit(
      state.copyWith(
        residencyType: event.resident ? ResidenceType.resident : ResidenceType.nonResident,
      ),
    );
  }

  Future<void> _changePassportId(
    _MyIdPassportIdChanged event,
    Emitter<MyIdState> emit,
  ) async {
    emit(
      state.copyWith(
        passportId: event.passportId,
        dataIsValid: isDataValid(state.dateOfBirth, event.passportId),
      ),
    );
  }

  Future<void> _changeDateOfBirth(
    _MyIdDateOfBirthChanged event,
    Emitter<MyIdState> emit,
  ) async {
    emit(
      state.copyWith(
        dateOfBirth: event.dateOfBirth,
        dataIsValid: isDataValid(event.dateOfBirth, state.passportId),
      ),
    );
  }

  Future<void> _openCamera(
    Emitter<MyIdState> emit,
  ) async {
    try {
      final myIdWrapper = MyidWrapper();
      print("hello");
      final code = await myIdWrapper.startMyId(
        state.passportId,
        state.dateOfBirth?.formatForMyId ?? '',
        //state.residencyType,
      );
      print('the code is $code');
      // final token = await MyIdClient.start(
      //   config: MyIdConfig(
      //     cameraShape: MyIdCameraShape.ELLIPSE,
      //     clientId: clientId,
      //     residency: state.residencyType,
      //     clientHash: clientHash,
      //     clientHashId: clientHashId,
      //     entryType: MyIdEntryType.AUTH,
      //     locale: MyIdLocale.RUSSIAN,
      //     passportData: state.passportId,
      //     dateOfBirth: state.dateOfBirth?.formatForMyId,
      //     buildMode: MyIdBuildMode.PRODUCTION,
      //   ),
      // );
      emit(state.copyWith(authStatus: MyIdAuthStatus.loading));
      late int? error;
      if (state.phoneNumber != null) {
        error = await _authRepository.resetIdentify(
          token: code ?? '',
          phoneNumber: state.phoneNumber!,
        );
      } else {
        error = await _authRepository.identify(code ?? '', state.accessToken);
      }
      if (error != null) {
        emit(
          state.copyWith(
            authStatus: MyIdAuthStatus.error,
            error: 'Could not identify from server',
          ),
        );
        emit(state.copyWith(authStatus: MyIdAuthStatus.initial));
        return;
      }

      emit(state.copyWith(authStatus: MyIdAuthStatus.authenticated));
    } on PlatformException catch (e) {
      print(e);
      emit(
        state.copyWith(
          authStatus: MyIdAuthStatus.error,
          error: e.message.toString(),
        ),
      );
      emit(state.copyWith(authStatus: MyIdAuthStatus.initial));
    } catch (e) {
      emit(state.copyWith(authStatus: MyIdAuthStatus.error, error: 'sdf'));
      emit(state.copyWith(authStatus: MyIdAuthStatus.initial));
    }
  }

  bool isDataValid(DateTime? date, String passport) =>
      passport.validatePassportId() && date != null && date.year < DateTime.now().year - 15 && date.year > 1900;
}
