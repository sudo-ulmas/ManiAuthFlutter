import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ru.dart';
import 'app_localizations_uz.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ru'),
    Locale('uz')
  ];

  /// No description provided for @identification.
  ///
  /// In ru, this message translates to:
  /// **'Идентификация'**
  String get identification;

  /// No description provided for @youNeedToPassIdentification.
  ///
  /// In ru, this message translates to:
  /// **'Вам необходимо пройти подтверждение личности'**
  String get youNeedToPassIdentification;

  /// No description provided for @passportNumberOfPinfl.
  ///
  /// In ru, this message translates to:
  /// **'Номер паспорта или ПИНФЛ'**
  String get passportNumberOfPinfl;

  /// No description provided for @dateOfBirth.
  ///
  /// In ru, this message translates to:
  /// **'Дата рождения'**
  String get dateOfBirth;

  /// No description provided for @ddmmyyy.
  ///
  /// In ru, this message translates to:
  /// **'ДД ММ ГГГГ'**
  String get ddmmyyy;

  /// No description provided for @january.
  ///
  /// In ru, this message translates to:
  /// **'Январь'**
  String get january;

  /// No description provided for @february.
  ///
  /// In ru, this message translates to:
  /// **'Февраль'**
  String get february;

  /// No description provided for @march.
  ///
  /// In ru, this message translates to:
  /// **'Март'**
  String get march;

  /// No description provided for @april.
  ///
  /// In ru, this message translates to:
  /// **'Апрель'**
  String get april;

  /// No description provided for @may.
  ///
  /// In ru, this message translates to:
  /// **'Май'**
  String get may;

  /// No description provided for @june.
  ///
  /// In ru, this message translates to:
  /// **'Июнь'**
  String get june;

  /// No description provided for @july.
  ///
  /// In ru, this message translates to:
  /// **'Июль'**
  String get july;

  /// No description provided for @august.
  ///
  /// In ru, this message translates to:
  /// **'Август'**
  String get august;

  /// No description provided for @september.
  ///
  /// In ru, this message translates to:
  /// **'Сентябрь'**
  String get september;

  /// No description provided for @october.
  ///
  /// In ru, this message translates to:
  /// **'Октябрь'**
  String get october;

  /// No description provided for @november.
  ///
  /// In ru, this message translates to:
  /// **'Ноябрь'**
  String get november;

  /// No description provided for @december.
  ///
  /// In ru, this message translates to:
  /// **'Декабрь'**
  String get december;

  /// No description provided for @letsContinue.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить'**
  String get letsContinue;

  /// No description provided for @registrationInYagona.
  ///
  /// In ru, this message translates to:
  /// **'Регистрация в Mani'**
  String get registrationInYagona;

  /// No description provided for @enterYourPhoneToContinue.
  ///
  /// In ru, this message translates to:
  /// **'Для продолжения введите номер вашего телефона или почту'**
  String get enterYourPhoneToContinue;

  /// No description provided for @recoverPassword.
  ///
  /// In ru, this message translates to:
  /// **'Восстановить пароль'**
  String get recoverPassword;

  /// No description provided for @byRegisteringYouAgreeTo.
  ///
  /// In ru, this message translates to:
  /// **'Регистрируясь в мобильном приложении, вы подтверждаете свое согласие с условиями'**
  String get byRegisteringYouAgreeTo;

  /// No description provided for @privacyPolicy.
  ///
  /// In ru, this message translates to:
  /// **'публичной оферты и политики конфиденциальности'**
  String get privacyPolicy;

  /// No description provided for @appVersion.
  ///
  /// In ru, this message translates to:
  /// **'Версия'**
  String get appVersion;

  /// No description provided for @signIn.
  ///
  /// In ru, this message translates to:
  /// **'Вход'**
  String get signIn;

  /// No description provided for @registration.
  ///
  /// In ru, this message translates to:
  /// **'Регистрация'**
  String get registration;

  /// No description provided for @phoneNumber.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона'**
  String get phoneNumber;

  /// No description provided for @otpCode.
  ///
  /// In ru, this message translates to:
  /// **'Код подтверждения'**
  String get otpCode;

  /// No description provided for @codeSentTo.
  ///
  /// In ru, this message translates to:
  /// **'СМС-код подтверждения отправлен на номер'**
  String get codeSentTo;

  /// No description provided for @youCanReceiveNewOtpIn.
  ///
  /// In ru, this message translates to:
  /// **'Вы можете получить новый \nСМС-код через'**
  String get youCanReceiveNewOtpIn;

  /// No description provided for @createLogin.
  ///
  /// In ru, this message translates to:
  /// **'Придумайте логин'**
  String get createLogin;

  /// No description provided for @createLoginDescription.
  ///
  /// In ru, this message translates to:
  /// **'Придумайте логин, он понадобится, если вы выйдите из приложения или переустановите его'**
  String get createLoginDescription;

  /// No description provided for @password.
  ///
  /// In ru, this message translates to:
  /// **'Пароль'**
  String get password;

  /// No description provided for @createPassword.
  ///
  /// In ru, this message translates to:
  /// **'Придумайте пароль, он понадобится, если вы выйдите из приложения или переустановите его'**
  String get createPassword;

  /// No description provided for @repeatPassword.
  ///
  /// In ru, this message translates to:
  /// **'Повторите пароль'**
  String get repeatPassword;

  /// No description provided for @login.
  ///
  /// In ru, this message translates to:
  /// **'Логин'**
  String get login;

  /// No description provided for @signInToYagona.
  ///
  /// In ru, this message translates to:
  /// **'Вход в Mani'**
  String get signInToYagona;

  /// No description provided for @signInDescription.
  ///
  /// In ru, this message translates to:
  /// **'Введите ваше имя пользователя и пароль, чтобы получить доступ к приложение Mani.'**
  String get signInDescription;

  /// No description provided for @recoverPasswordTitle.
  ///
  /// In ru, this message translates to:
  /// **'Восстановление пароля'**
  String get recoverPasswordTitle;

  /// No description provided for @enterYourPhone.
  ///
  /// In ru, this message translates to:
  /// **'Введите номер телефона для восстановления пароля'**
  String get enterYourPhone;

  /// No description provided for @newPassword.
  ///
  /// In ru, this message translates to:
  /// **'Новый пароль'**
  String get newPassword;

  /// No description provided for @resident.
  ///
  /// In ru, this message translates to:
  /// **'Резидент'**
  String get resident;

  /// No description provided for @resendOpt.
  ///
  /// In ru, this message translates to:
  /// **'Получить новый СМС-код'**
  String get resendOpt;

  /// No description provided for @userNotFound.
  ///
  /// In ru, this message translates to:
  /// **'Пользователь не найден'**
  String get userNotFound;

  /// No description provided for @userAlreadyExists.
  ///
  /// In ru, this message translates to:
  /// **'Пользователь уже существует'**
  String get userAlreadyExists;

  /// No description provided for @inactiveUser.
  ///
  /// In ru, this message translates to:
  /// **'Неактивный пользователь'**
  String get inactiveUser;

  /// No description provided for @wrongPassword.
  ///
  /// In ru, this message translates to:
  /// **'Неправильный пароль'**
  String get wrongPassword;

  /// No description provided for @temporarilyBlocked.
  ///
  /// In ru, this message translates to:
  /// **'Временно заблокирован'**
  String get temporarilyBlocked;

  /// No description provided for @recordNotFound.
  ///
  /// In ru, this message translates to:
  /// **'Запись не найдена'**
  String get recordNotFound;

  /// No description provided for @wrongOtp.
  ///
  /// In ru, this message translates to:
  /// **'Неправильный OTP'**
  String get wrongOtp;

  /// No description provided for @integrationError.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка интеграции'**
  String get integrationError;

  /// No description provided for @emptyLogin.
  ///
  /// In ru, this message translates to:
  /// **'Поле логин не может быть пустым'**
  String get emptyLogin;

  /// No description provided for @shortLogin.
  ///
  /// In ru, this message translates to:
  /// **'Логин не может быть меньше 5 символов'**
  String get shortLogin;

  /// No description provided for @emptyPassword.
  ///
  /// In ru, this message translates to:
  /// **'Поле пароль не может быть пустым'**
  String get emptyPassword;

  /// No description provided for @shortPassword.
  ///
  /// In ru, this message translates to:
  /// **'Пароль не может быть меньше 6 символов'**
  String get shortPassword;

  /// No description provided for @emptyPhone.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона не может быть пустым'**
  String get emptyPhone;

  /// No description provided for @shortPhone.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона должен быть равен 9 цифрам'**
  String get shortPhone;

  /// No description provided for @onlyDigitsPhone.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона должен состоять из цифр'**
  String get onlyDigitsPhone;

  /// No description provided for @notVerifiedOtp.
  ///
  /// In ru, this message translates to:
  /// **'ОTP код не верифицирован'**
  String get notVerifiedOtp;

  /// No description provided for @wrongStatusOtpResend.
  ///
  /// In ru, this message translates to:
  /// **'Неправильный статус OTP resend'**
  String get wrongStatusOtpResend;

  /// No description provided for @emptyOtp.
  ///
  /// In ru, this message translates to:
  /// **'Поле OTP не может быть пустым'**
  String get emptyOtp;

  /// No description provided for @shortOtp.
  ///
  /// In ru, this message translates to:
  /// **'OTP должен быть равен 6 цифрам'**
  String get shortOtp;

  /// No description provided for @onlyDigitsOtp.
  ///
  /// In ru, this message translates to:
  /// **'OTP должен состоять из цифр'**
  String get onlyDigitsOtp;

  /// No description provided for @otpExpired.
  ///
  /// In ru, this message translates to:
  /// **'Срок действия OTP истёк. Отправьте заново код'**
  String get otpExpired;

  /// No description provided for @notFound.
  ///
  /// In ru, this message translates to:
  /// **'Страница не найдена'**
  String get notFound;

  /// No description provided for @serverError.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка в сервере'**
  String get serverError;

  /// No description provided for @timeout.
  ///
  /// In ru, this message translates to:
  /// **'Сервер не отвечает, попробуйте еще раз'**
  String get timeout;

  /// No description provided for @passwordMismatch.
  ///
  /// In ru, this message translates to:
  /// **'Новый пароль не совпадает с паролем подтверждения'**
  String get passwordMismatch;

  /// No description provided for @loginCantStartWithNumber.
  ///
  /// In ru, this message translates to:
  /// **'Логин не может начинаться с цифры'**
  String get loginCantStartWithNumber;

  /// No description provided for @fieldCanNotBeEmpty.
  ///
  /// In ru, this message translates to:
  /// **'Поле логин/номер телефона не может быть пустым'**
  String get fieldCanNotBeEmpty;

  /// No description provided for @wrongVerificationStatus.
  ///
  /// In ru, this message translates to:
  /// **'Неправильный статус для верификации'**
  String get wrongVerificationStatus;

  /// No description provided for @loginAlreadyExists.
  ///
  /// In ru, this message translates to:
  /// **'Такой логин уже есть в системе'**
  String get loginAlreadyExists;

  /// No description provided for @phoneAlreadyExists.
  ///
  /// In ru, this message translates to:
  /// **'Такой номер телефона уже есть в системе'**
  String get phoneAlreadyExists;

  /// No description provided for @wrongPinfl.
  ///
  /// In ru, this message translates to:
  /// **'Неправильный ПИНФЛ'**
  String get wrongPinfl;

  /// No description provided for @myIdIntegrationError.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка при интеграции с MyID'**
  String get myIdIntegrationError;

  /// No description provided for @userAlreadyIdentified.
  ///
  /// In ru, this message translates to:
  /// **'Пользователь уже идентифицирован'**
  String get userAlreadyIdentified;

  /// No description provided for @userInfoNotFound.
  ///
  /// In ru, this message translates to:
  /// **'Информация о пользователе не найдена'**
  String get userInfoNotFound;

  /// No description provided for @myIdCodeIsEmpty.
  ///
  /// In ru, this message translates to:
  /// **'Код MyID не может быть пустым'**
  String get myIdCodeIsEmpty;

  /// No description provided for @userIsNotIdentified.
  ///
  /// In ru, this message translates to:
  /// **'Не идентифицированный пользователь'**
  String get userIsNotIdentified;

  /// No description provided for @noInternet.
  ///
  /// In ru, this message translates to:
  /// **'Нет подключения к интернету'**
  String get noInternet;

  /// No description provided for @retry.
  ///
  /// In ru, this message translates to:
  /// **'Повторить попытку'**
  String get retry;

  /// No description provided for @useCellularForIdentification.
  ///
  /// In ru, this message translates to:
  /// **'Пожалуйста, отключите Wi-Fi и используйте сотовые данные для идентификации.'**
  String get useCellularForIdentification;

  /// No description provided for @success.
  ///
  /// In ru, this message translates to:
  /// **'Успешно'**
  String get success;

  /// No description provided for @paymentSystemNotFound.
  ///
  /// In ru, this message translates to:
  /// **'Платежная система не найдена'**
  String get paymentSystemNotFound;

  /// No description provided for @userIdMismatch.
  ///
  /// In ru, this message translates to:
  /// **'Запрошенный идентификатор пользователя не владеет текущей учетной записью'**
  String get userIdMismatch;

  /// No description provided for @problemBetweenMicroservices.
  ///
  /// In ru, this message translates to:
  /// **'Проблема с межсервисной связью'**
  String get problemBetweenMicroservices;

  /// No description provided for @noProfileFoundForUser.
  ///
  /// In ru, this message translates to:
  /// **'Для пользователя не найдено учетных записей'**
  String get noProfileFoundForUser;

  /// No description provided for @couldNotCompleteTheCommand.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось выполнить команду'**
  String get couldNotCompleteTheCommand;

  /// No description provided for @noProfileWasFoundForUsernameAndPassword.
  ///
  /// In ru, this message translates to:
  /// **'Профиль с текущим phone или username пользователя не найден.'**
  String get noProfileWasFoundForUsernameAndPassword;

  /// No description provided for @tooMantAttempts.
  ///
  /// In ru, this message translates to:
  /// **'Слишком много попыток.'**
  String get tooMantAttempts;

  /// No description provided for @errorHappened.
  ///
  /// In ru, this message translates to:
  /// **'Возникла ошибка'**
  String get errorHappened;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ru', 'uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ru': return AppLocalizationsRu();
    case 'uz': return AppLocalizationsUz();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
