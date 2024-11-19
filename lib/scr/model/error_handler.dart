import 'package:flutter/widgets.dart';
import 'package:mani_auth_plugin/scr/util/l10n/l10n.dart';
import 'package:mani_uikit/model/error_handler_model.dart';

class ErrorHandler implements ErrorHandlerModel {
  const ErrorHandler(this.code);

  @override
  final int code;

  @override
  String message(BuildContext context) => switch (code) {
        0 => context.l10n.noInternet,
        100 => context.l10n.userIsNotIdentified,
        408 => context.l10n.timeout,
        404 => context.l10n.notFound,
        600 => context.l10n.useCellularForIdentification,
        (>= 500 && < 600) || 20000 => context.l10n.serverError,
        40001 => context.l10n.success,
        20001 => context.l10n.userNotFound,
        20002 => context.l10n.userAlreadyExists,
        20003 => context.l10n.inactiveUser,
        20004 => context.l10n.wrongPassword,
        20005 => context.l10n.temporarilyBlocked,
        20006 => context.l10n.recordNotFound,
        20007 => context.l10n.wrongOtp,
        20008 => context.l10n.integrationError,
        20009 => context.l10n.emptyLogin,
        20010 => context.l10n.shortLogin,
        20011 => context.l10n.emptyPassword,
        20012 => context.l10n.shortPassword,
        20013 => context.l10n.emptyPhone,
        20014 => context.l10n.shortPhone,
        20015 => context.l10n.onlyDigitsPhone,
        20016 => context.l10n.notVerifiedOtp,
        20017 => context.l10n.wrongStatusOtpResend,
        20018 => context.l10n.emptyOtp,
        20019 => context.l10n.shortOtp,
        20020 => context.l10n.onlyDigitsOtp,
        20021 => context.l10n.otpExpired,
        20022 => context.l10n.loginCantStartWithNumber,
        20023 => context.l10n.fieldCanNotBeEmpty,
        20024 => context.l10n.wrongVerificationStatus,
        20025 => context.l10n.loginAlreadyExists,
        20026 => context.l10n.phoneAlreadyExists,
        20027 => context.l10n.wrongPinfl,
        20028 => context.l10n.myIdIntegrationError,
        20029 => context.l10n.passwordMismatch,
        20030 => context.l10n.userAlreadyIdentified,
        20031 => context.l10n.userInfoNotFound,
        20032 => context.l10n.myIdCodeIsEmpty,
        20035 => context.l10n.paymentSystemNotFound,
        20039 => context.l10n.userIdMismatch,
        20040 => context.l10n.problemBetweenMicroservices,
        20046 => context.l10n.noProfileFoundForUser,
        20048 => context.l10n.couldNotCompleteTheCommand,
        20049 => context.l10n.noProfileWasFoundForUsernameAndPassword,
        20050 => context.l10n.tooMantAttempts,
        _ => context.l10n.errorHappened,
      };
}
