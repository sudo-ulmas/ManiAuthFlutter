import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mani_auth_plugin/scr/bloc/forgot_password_bloc/forgot_password_bloc.dart';
import 'package:mani_auth_plugin/scr/bloc/my_id_bloc/my_id_bloc.dart';
import 'package:mani_auth_plugin/scr/bloc/registration/registration_bloc.dart';
import 'package:mani_auth_plugin/scr/repository/auth_repository.dart';
import 'package:mani_auth_plugin/scr/util/app_router.dart';
import 'package:mani_auth_plugin/scr/util/dio_client.dart';
import 'package:mani_auth_plugin/scr/util/l10n/l10n.dart';
import 'package:mani_uikit/mani_uikit.dart';

import 'model/residence_type.dart';

class ManiAuth extends StatefulWidget {
  const ManiAuth({
    super.key,
    required this.locale,
    required this.paymentSystemId,
    required this.isProd,
    required this.residenceType,
    required this.pinfl,
  });

  final String paymentSystemId;
  final Locale locale;
  final bool isProd;
  final String pinfl;
  final ResidenceType residenceType;

  @override
  State<ManiAuth> createState() => _ManiAuthState();
}

class _ManiAuthState extends State<ManiAuth> {
  Size get designSize => const Size(375, 812);
  final appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
    print('hello fam');
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioClient(widget.paymentSystemId, widget.isProd),
        ),
        RepositoryProvider(create: (context) => AuthRepository(context.read())),
        BlocProvider(
          create: (context) => RegistrationBloc(context.read()),
        ),
        BlocProvider(
          create: (context) => ForgotPasswordBloc(context.read()),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(AppThemeData.fromColorScheme(AppColorScheme.light())),
        ),
        BlocProvider(
            create: (context) => pinflValid(widget.pinfl)
                ? (MyIdBloc(context.read())
                  ..add(MyIdEvent.residencyChanged(resident: widget.residenceType == ResidenceType.resident))
                  ..add(MyIdEvent.passportIdChanged(widget.pinfl))
                  ..add(MyIdEvent.dateOfBirthChanged(birthdateFromPinfl(widget.pinfl))))
                : MyIdBloc(context.read())),
      ],
      child: BlocProvider(
          create: (BuildContext context) => ThemeCubit(AppThemeData.fromColorScheme(AppColorScheme.light())),
          child: BlocBuilder<ThemeCubit, AppThemeData>(
            builder: (_, themeData) {
              return AppTheme(
                data: themeData,
                child: MaterialApp.router(
                  locale: widget.locale,
                  localizationsDelegates: AppLocalizations.localizationsDelegates,
                  supportedLocales: AppLocalizations.supportedLocales,
                  debugShowCheckedModeBanner: false,
                  title: 'Mani Auth',
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ),
                  routerConfig: appRouter.goRouter,
                ),
              );
            },
          )),
    );
  }

  DateTime birthdateFromPinfl(String input) {
    final day = int.parse(input.substring(1, 3));
    final month = int.parse(input.substring(3, 5));
    final year = int.parse('19${input.substring(5, 7)}');

    return DateTime(year, month, day);
  }

  bool pinflValid(String? input) {
    if (input == null || input.isEmpty) return false;
    final numberRegExp = RegExp(r'^\d{14}$');
    return numberRegExp.hasMatch(input);
  }
}
