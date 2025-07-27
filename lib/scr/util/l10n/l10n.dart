import 'package:flutter/widgets.dart';
import 'package:mani_auth_plugin/scr/util/l10n/app_localizations.dart';

export 'package:mani_auth_plugin/scr/util/l10n/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
