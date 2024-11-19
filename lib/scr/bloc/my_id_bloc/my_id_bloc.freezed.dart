// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_id_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyIdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passportId) passportIdChanged,
    required TResult Function(DateTime? dateOfBirth) dateOfBirthChanged,
    required TResult Function(bool resident) residencyChanged,
    required TResult Function(String? phoneNumber) continueButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String passportId)? passportIdChanged,
    TResult? Function(DateTime? dateOfBirth)? dateOfBirthChanged,
    TResult? Function(bool resident)? residencyChanged,
    TResult? Function(String? phoneNumber)? continueButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passportId)? passportIdChanged,
    TResult Function(DateTime? dateOfBirth)? dateOfBirthChanged,
    TResult Function(bool resident)? residencyChanged,
    TResult Function(String? phoneNumber)? continueButtonTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyIdPassportIdChanged value) passportIdChanged,
    required TResult Function(_MyIdDateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(_MyIdResidencyChanged value) residencyChanged,
    required TResult Function(_MyIdContinueButtonTapped value)
        continueButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MyIdPassportIdChanged value)? passportIdChanged,
    TResult? Function(_MyIdDateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(_MyIdResidencyChanged value)? residencyChanged,
    TResult? Function(_MyIdContinueButtonTapped value)? continueButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyIdPassportIdChanged value)? passportIdChanged,
    TResult Function(_MyIdDateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(_MyIdResidencyChanged value)? residencyChanged,
    TResult Function(_MyIdContinueButtonTapped value)? continueButtonTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyIdEventCopyWith<$Res> {
  factory $MyIdEventCopyWith(MyIdEvent value, $Res Function(MyIdEvent) then) =
      _$MyIdEventCopyWithImpl<$Res, MyIdEvent>;
}

/// @nodoc
class _$MyIdEventCopyWithImpl<$Res, $Val extends MyIdEvent>
    implements $MyIdEventCopyWith<$Res> {
  _$MyIdEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MyIdPassportIdChangedImplCopyWith<$Res> {
  factory _$$MyIdPassportIdChangedImplCopyWith(
          _$MyIdPassportIdChangedImpl value,
          $Res Function(_$MyIdPassportIdChangedImpl) then) =
      __$$MyIdPassportIdChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String passportId});
}

/// @nodoc
class __$$MyIdPassportIdChangedImplCopyWithImpl<$Res>
    extends _$MyIdEventCopyWithImpl<$Res, _$MyIdPassportIdChangedImpl>
    implements _$$MyIdPassportIdChangedImplCopyWith<$Res> {
  __$$MyIdPassportIdChangedImplCopyWithImpl(_$MyIdPassportIdChangedImpl _value,
      $Res Function(_$MyIdPassportIdChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passportId = null,
  }) {
    return _then(_$MyIdPassportIdChangedImpl(
      null == passportId
          ? _value.passportId
          : passportId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MyIdPassportIdChangedImpl implements _MyIdPassportIdChanged {
  const _$MyIdPassportIdChangedImpl(this.passportId);

  @override
  final String passportId;

  @override
  String toString() {
    return 'MyIdEvent.passportIdChanged(passportId: $passportId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyIdPassportIdChangedImpl &&
            (identical(other.passportId, passportId) ||
                other.passportId == passportId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passportId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyIdPassportIdChangedImplCopyWith<_$MyIdPassportIdChangedImpl>
      get copyWith => __$$MyIdPassportIdChangedImplCopyWithImpl<
          _$MyIdPassportIdChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passportId) passportIdChanged,
    required TResult Function(DateTime? dateOfBirth) dateOfBirthChanged,
    required TResult Function(bool resident) residencyChanged,
    required TResult Function(String? phoneNumber) continueButtonTapped,
  }) {
    return passportIdChanged(passportId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String passportId)? passportIdChanged,
    TResult? Function(DateTime? dateOfBirth)? dateOfBirthChanged,
    TResult? Function(bool resident)? residencyChanged,
    TResult? Function(String? phoneNumber)? continueButtonTapped,
  }) {
    return passportIdChanged?.call(passportId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passportId)? passportIdChanged,
    TResult Function(DateTime? dateOfBirth)? dateOfBirthChanged,
    TResult Function(bool resident)? residencyChanged,
    TResult Function(String? phoneNumber)? continueButtonTapped,
    required TResult orElse(),
  }) {
    if (passportIdChanged != null) {
      return passportIdChanged(passportId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyIdPassportIdChanged value) passportIdChanged,
    required TResult Function(_MyIdDateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(_MyIdResidencyChanged value) residencyChanged,
    required TResult Function(_MyIdContinueButtonTapped value)
        continueButtonTapped,
  }) {
    return passportIdChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MyIdPassportIdChanged value)? passportIdChanged,
    TResult? Function(_MyIdDateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(_MyIdResidencyChanged value)? residencyChanged,
    TResult? Function(_MyIdContinueButtonTapped value)? continueButtonTapped,
  }) {
    return passportIdChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyIdPassportIdChanged value)? passportIdChanged,
    TResult Function(_MyIdDateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(_MyIdResidencyChanged value)? residencyChanged,
    TResult Function(_MyIdContinueButtonTapped value)? continueButtonTapped,
    required TResult orElse(),
  }) {
    if (passportIdChanged != null) {
      return passportIdChanged(this);
    }
    return orElse();
  }
}

abstract class _MyIdPassportIdChanged implements MyIdEvent {
  const factory _MyIdPassportIdChanged(final String passportId) =
      _$MyIdPassportIdChangedImpl;

  String get passportId;
  @JsonKey(ignore: true)
  _$$MyIdPassportIdChangedImplCopyWith<_$MyIdPassportIdChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyIdDateOfBirthChangedImplCopyWith<$Res> {
  factory _$$MyIdDateOfBirthChangedImplCopyWith(
          _$MyIdDateOfBirthChangedImpl value,
          $Res Function(_$MyIdDateOfBirthChangedImpl) then) =
      __$$MyIdDateOfBirthChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? dateOfBirth});
}

/// @nodoc
class __$$MyIdDateOfBirthChangedImplCopyWithImpl<$Res>
    extends _$MyIdEventCopyWithImpl<$Res, _$MyIdDateOfBirthChangedImpl>
    implements _$$MyIdDateOfBirthChangedImplCopyWith<$Res> {
  __$$MyIdDateOfBirthChangedImplCopyWithImpl(
      _$MyIdDateOfBirthChangedImpl _value,
      $Res Function(_$MyIdDateOfBirthChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOfBirth = freezed,
  }) {
    return _then(_$MyIdDateOfBirthChangedImpl(
      freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$MyIdDateOfBirthChangedImpl implements _MyIdDateOfBirthChanged {
  const _$MyIdDateOfBirthChangedImpl(this.dateOfBirth);

  @override
  final DateTime? dateOfBirth;

  @override
  String toString() {
    return 'MyIdEvent.dateOfBirthChanged(dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyIdDateOfBirthChangedImpl &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateOfBirth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyIdDateOfBirthChangedImplCopyWith<_$MyIdDateOfBirthChangedImpl>
      get copyWith => __$$MyIdDateOfBirthChangedImplCopyWithImpl<
          _$MyIdDateOfBirthChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passportId) passportIdChanged,
    required TResult Function(DateTime? dateOfBirth) dateOfBirthChanged,
    required TResult Function(bool resident) residencyChanged,
    required TResult Function(String? phoneNumber) continueButtonTapped,
  }) {
    return dateOfBirthChanged(dateOfBirth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String passportId)? passportIdChanged,
    TResult? Function(DateTime? dateOfBirth)? dateOfBirthChanged,
    TResult? Function(bool resident)? residencyChanged,
    TResult? Function(String? phoneNumber)? continueButtonTapped,
  }) {
    return dateOfBirthChanged?.call(dateOfBirth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passportId)? passportIdChanged,
    TResult Function(DateTime? dateOfBirth)? dateOfBirthChanged,
    TResult Function(bool resident)? residencyChanged,
    TResult Function(String? phoneNumber)? continueButtonTapped,
    required TResult orElse(),
  }) {
    if (dateOfBirthChanged != null) {
      return dateOfBirthChanged(dateOfBirth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyIdPassportIdChanged value) passportIdChanged,
    required TResult Function(_MyIdDateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(_MyIdResidencyChanged value) residencyChanged,
    required TResult Function(_MyIdContinueButtonTapped value)
        continueButtonTapped,
  }) {
    return dateOfBirthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MyIdPassportIdChanged value)? passportIdChanged,
    TResult? Function(_MyIdDateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(_MyIdResidencyChanged value)? residencyChanged,
    TResult? Function(_MyIdContinueButtonTapped value)? continueButtonTapped,
  }) {
    return dateOfBirthChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyIdPassportIdChanged value)? passportIdChanged,
    TResult Function(_MyIdDateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(_MyIdResidencyChanged value)? residencyChanged,
    TResult Function(_MyIdContinueButtonTapped value)? continueButtonTapped,
    required TResult orElse(),
  }) {
    if (dateOfBirthChanged != null) {
      return dateOfBirthChanged(this);
    }
    return orElse();
  }
}

abstract class _MyIdDateOfBirthChanged implements MyIdEvent {
  const factory _MyIdDateOfBirthChanged(final DateTime? dateOfBirth) =
      _$MyIdDateOfBirthChangedImpl;

  DateTime? get dateOfBirth;
  @JsonKey(ignore: true)
  _$$MyIdDateOfBirthChangedImplCopyWith<_$MyIdDateOfBirthChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyIdResidencyChangedImplCopyWith<$Res> {
  factory _$$MyIdResidencyChangedImplCopyWith(_$MyIdResidencyChangedImpl value,
          $Res Function(_$MyIdResidencyChangedImpl) then) =
      __$$MyIdResidencyChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool resident});
}

/// @nodoc
class __$$MyIdResidencyChangedImplCopyWithImpl<$Res>
    extends _$MyIdEventCopyWithImpl<$Res, _$MyIdResidencyChangedImpl>
    implements _$$MyIdResidencyChangedImplCopyWith<$Res> {
  __$$MyIdResidencyChangedImplCopyWithImpl(_$MyIdResidencyChangedImpl _value,
      $Res Function(_$MyIdResidencyChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resident = null,
  }) {
    return _then(_$MyIdResidencyChangedImpl(
      resident: null == resident
          ? _value.resident
          : resident // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MyIdResidencyChangedImpl implements _MyIdResidencyChanged {
  const _$MyIdResidencyChangedImpl({required this.resident});

  @override
  final bool resident;

  @override
  String toString() {
    return 'MyIdEvent.residencyChanged(resident: $resident)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyIdResidencyChangedImpl &&
            (identical(other.resident, resident) ||
                other.resident == resident));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resident);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyIdResidencyChangedImplCopyWith<_$MyIdResidencyChangedImpl>
      get copyWith =>
          __$$MyIdResidencyChangedImplCopyWithImpl<_$MyIdResidencyChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passportId) passportIdChanged,
    required TResult Function(DateTime? dateOfBirth) dateOfBirthChanged,
    required TResult Function(bool resident) residencyChanged,
    required TResult Function(String? phoneNumber) continueButtonTapped,
  }) {
    return residencyChanged(resident);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String passportId)? passportIdChanged,
    TResult? Function(DateTime? dateOfBirth)? dateOfBirthChanged,
    TResult? Function(bool resident)? residencyChanged,
    TResult? Function(String? phoneNumber)? continueButtonTapped,
  }) {
    return residencyChanged?.call(resident);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passportId)? passportIdChanged,
    TResult Function(DateTime? dateOfBirth)? dateOfBirthChanged,
    TResult Function(bool resident)? residencyChanged,
    TResult Function(String? phoneNumber)? continueButtonTapped,
    required TResult orElse(),
  }) {
    if (residencyChanged != null) {
      return residencyChanged(resident);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyIdPassportIdChanged value) passportIdChanged,
    required TResult Function(_MyIdDateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(_MyIdResidencyChanged value) residencyChanged,
    required TResult Function(_MyIdContinueButtonTapped value)
        continueButtonTapped,
  }) {
    return residencyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MyIdPassportIdChanged value)? passportIdChanged,
    TResult? Function(_MyIdDateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(_MyIdResidencyChanged value)? residencyChanged,
    TResult? Function(_MyIdContinueButtonTapped value)? continueButtonTapped,
  }) {
    return residencyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyIdPassportIdChanged value)? passportIdChanged,
    TResult Function(_MyIdDateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(_MyIdResidencyChanged value)? residencyChanged,
    TResult Function(_MyIdContinueButtonTapped value)? continueButtonTapped,
    required TResult orElse(),
  }) {
    if (residencyChanged != null) {
      return residencyChanged(this);
    }
    return orElse();
  }
}

abstract class _MyIdResidencyChanged implements MyIdEvent {
  const factory _MyIdResidencyChanged({required final bool resident}) =
      _$MyIdResidencyChangedImpl;

  bool get resident;
  @JsonKey(ignore: true)
  _$$MyIdResidencyChangedImplCopyWith<_$MyIdResidencyChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyIdContinueButtonTappedImplCopyWith<$Res> {
  factory _$$MyIdContinueButtonTappedImplCopyWith(
          _$MyIdContinueButtonTappedImpl value,
          $Res Function(_$MyIdContinueButtonTappedImpl) then) =
      __$$MyIdContinueButtonTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? phoneNumber});
}

/// @nodoc
class __$$MyIdContinueButtonTappedImplCopyWithImpl<$Res>
    extends _$MyIdEventCopyWithImpl<$Res, _$MyIdContinueButtonTappedImpl>
    implements _$$MyIdContinueButtonTappedImplCopyWith<$Res> {
  __$$MyIdContinueButtonTappedImplCopyWithImpl(
      _$MyIdContinueButtonTappedImpl _value,
      $Res Function(_$MyIdContinueButtonTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$MyIdContinueButtonTappedImpl(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MyIdContinueButtonTappedImpl implements _MyIdContinueButtonTapped {
  const _$MyIdContinueButtonTappedImpl({this.phoneNumber});

  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'MyIdEvent.continueButtonTapped(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyIdContinueButtonTappedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyIdContinueButtonTappedImplCopyWith<_$MyIdContinueButtonTappedImpl>
      get copyWith => __$$MyIdContinueButtonTappedImplCopyWithImpl<
          _$MyIdContinueButtonTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passportId) passportIdChanged,
    required TResult Function(DateTime? dateOfBirth) dateOfBirthChanged,
    required TResult Function(bool resident) residencyChanged,
    required TResult Function(String? phoneNumber) continueButtonTapped,
  }) {
    return continueButtonTapped(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String passportId)? passportIdChanged,
    TResult? Function(DateTime? dateOfBirth)? dateOfBirthChanged,
    TResult? Function(bool resident)? residencyChanged,
    TResult? Function(String? phoneNumber)? continueButtonTapped,
  }) {
    return continueButtonTapped?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passportId)? passportIdChanged,
    TResult Function(DateTime? dateOfBirth)? dateOfBirthChanged,
    TResult Function(bool resident)? residencyChanged,
    TResult Function(String? phoneNumber)? continueButtonTapped,
    required TResult orElse(),
  }) {
    if (continueButtonTapped != null) {
      return continueButtonTapped(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyIdPassportIdChanged value) passportIdChanged,
    required TResult Function(_MyIdDateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(_MyIdResidencyChanged value) residencyChanged,
    required TResult Function(_MyIdContinueButtonTapped value)
        continueButtonTapped,
  }) {
    return continueButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MyIdPassportIdChanged value)? passportIdChanged,
    TResult? Function(_MyIdDateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(_MyIdResidencyChanged value)? residencyChanged,
    TResult? Function(_MyIdContinueButtonTapped value)? continueButtonTapped,
  }) {
    return continueButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyIdPassportIdChanged value)? passportIdChanged,
    TResult Function(_MyIdDateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(_MyIdResidencyChanged value)? residencyChanged,
    TResult Function(_MyIdContinueButtonTapped value)? continueButtonTapped,
    required TResult orElse(),
  }) {
    if (continueButtonTapped != null) {
      return continueButtonTapped(this);
    }
    return orElse();
  }
}

abstract class _MyIdContinueButtonTapped implements MyIdEvent {
  const factory _MyIdContinueButtonTapped({final String? phoneNumber}) =
      _$MyIdContinueButtonTappedImpl;

  String? get phoneNumber;
  @JsonKey(ignore: true)
  _$$MyIdContinueButtonTappedImplCopyWith<_$MyIdContinueButtonTappedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyIdState {
  String get passportId => throw _privateConstructorUsedError;
  bool get dataIsValid => throw _privateConstructorUsedError;
  ResidenceType get residencyType => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  MyIdAuthStatus get authStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyIdStateCopyWith<MyIdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyIdStateCopyWith<$Res> {
  factory $MyIdStateCopyWith(MyIdState value, $Res Function(MyIdState) then) =
      _$MyIdStateCopyWithImpl<$Res, MyIdState>;
  @useResult
  $Res call(
      {String passportId,
      bool dataIsValid,
      ResidenceType residencyType,
      String error,
      DateTime? dateOfBirth,
      MyIdAuthStatus authStatus});
}

/// @nodoc
class _$MyIdStateCopyWithImpl<$Res, $Val extends MyIdState>
    implements $MyIdStateCopyWith<$Res> {
  _$MyIdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passportId = null,
    Object? dataIsValid = null,
    Object? residencyType = null,
    Object? error = null,
    Object? dateOfBirth = freezed,
    Object? authStatus = null,
  }) {
    return _then(_value.copyWith(
      passportId: null == passportId
          ? _value.passportId
          : passportId // ignore: cast_nullable_to_non_nullable
              as String,
      dataIsValid: null == dataIsValid
          ? _value.dataIsValid
          : dataIsValid // ignore: cast_nullable_to_non_nullable
              as bool,
      residencyType: null == residencyType
          ? _value.residencyType
          : residencyType // ignore: cast_nullable_to_non_nullable
              as ResidenceType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as MyIdAuthStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyIdStateImplCopyWith<$Res>
    implements $MyIdStateCopyWith<$Res> {
  factory _$$MyIdStateImplCopyWith(
          _$MyIdStateImpl value, $Res Function(_$MyIdStateImpl) then) =
      __$$MyIdStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String passportId,
      bool dataIsValid,
      ResidenceType residencyType,
      String error,
      DateTime? dateOfBirth,
      MyIdAuthStatus authStatus});
}

/// @nodoc
class __$$MyIdStateImplCopyWithImpl<$Res>
    extends _$MyIdStateCopyWithImpl<$Res, _$MyIdStateImpl>
    implements _$$MyIdStateImplCopyWith<$Res> {
  __$$MyIdStateImplCopyWithImpl(
      _$MyIdStateImpl _value, $Res Function(_$MyIdStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passportId = null,
    Object? dataIsValid = null,
    Object? residencyType = null,
    Object? error = null,
    Object? dateOfBirth = freezed,
    Object? authStatus = null,
  }) {
    return _then(_$MyIdStateImpl(
      passportId: null == passportId
          ? _value.passportId
          : passportId // ignore: cast_nullable_to_non_nullable
              as String,
      dataIsValid: null == dataIsValid
          ? _value.dataIsValid
          : dataIsValid // ignore: cast_nullable_to_non_nullable
              as bool,
      residencyType: null == residencyType
          ? _value.residencyType
          : residencyType // ignore: cast_nullable_to_non_nullable
              as ResidenceType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as MyIdAuthStatus,
    ));
  }
}

/// @nodoc

class _$MyIdStateImpl implements _MyIdState {
  const _$MyIdStateImpl(
      {required this.passportId,
      required this.dataIsValid,
      this.residencyType = ResidenceType.resident,
      this.error = '',
      this.dateOfBirth,
      this.authStatus = MyIdAuthStatus.initial});

  @override
  final String passportId;
  @override
  final bool dataIsValid;
  @override
  @JsonKey()
  final ResidenceType residencyType;
  @override
  @JsonKey()
  final String error;
  @override
  final DateTime? dateOfBirth;
  @override
  @JsonKey()
  final MyIdAuthStatus authStatus;

  @override
  String toString() {
    return 'MyIdState(passportId: $passportId, dataIsValid: $dataIsValid, residencyType: $residencyType, error: $error, dateOfBirth: $dateOfBirth, authStatus: $authStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyIdStateImpl &&
            (identical(other.passportId, passportId) ||
                other.passportId == passportId) &&
            (identical(other.dataIsValid, dataIsValid) ||
                other.dataIsValid == dataIsValid) &&
            (identical(other.residencyType, residencyType) ||
                other.residencyType == residencyType) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passportId, dataIsValid,
      residencyType, error, dateOfBirth, authStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyIdStateImplCopyWith<_$MyIdStateImpl> get copyWith =>
      __$$MyIdStateImplCopyWithImpl<_$MyIdStateImpl>(this, _$identity);
}

abstract class _MyIdState implements MyIdState {
  const factory _MyIdState(
      {required final String passportId,
      required final bool dataIsValid,
      final ResidenceType residencyType,
      final String error,
      final DateTime? dateOfBirth,
      final MyIdAuthStatus authStatus}) = _$MyIdStateImpl;

  @override
  String get passportId;
  @override
  bool get dataIsValid;
  @override
  ResidenceType get residencyType;
  @override
  String get error;
  @override
  DateTime? get dateOfBirth;
  @override
  MyIdAuthStatus get authStatus;
  @override
  @JsonKey(ignore: true)
  _$$MyIdStateImplCopyWith<_$MyIdStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
