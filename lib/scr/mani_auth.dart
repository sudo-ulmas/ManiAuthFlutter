import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mani_auth_plugin/scr/bloc/forgot_password_bloc/forgot_password_bloc.dart';
import 'package:mani_auth_plugin/scr/bloc/registration/registration_bloc.dart';
import 'package:mani_auth_plugin/scr/repository/auth_repository.dart';
import 'package:mani_auth_plugin/scr/util/app_router.dart';
import 'package:mani_auth_plugin/scr/util/dio_client.dart';
import 'package:mani_auth_plugin/scr/util/l10n/l10n.dart';
import 'package:mani_uikit/mani_uikit.dart';

class ManiAuth extends StatefulWidget {
  const ManiAuth({
    super.key,
    required this.locale,
    required this.paymentSystemId,
    required this.isProd,
  });

  final String paymentSystemId;
  final Locale locale;
  final bool isProd;

  @override
  State<ManiAuth> createState() => _ManiAuthState();
}

class _ManiAuthState extends State<ManiAuth> {
  Size get designSize => const Size(375, 812);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioClient(widget.paymentSystemId, widget.isProd),
        ),
        BlocProvider(
          create: (context) => RegistrationBloc(AuthRepository(context.read())),
        ),
        BlocProvider(
          create: (context) => ForgotPasswordBloc(AuthRepository(context.read())),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(AppThemeData.fromColorScheme(AppColorScheme.light())),
        ),
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
                  routerConfig: AppRouter().goRouter,
                ),
              );
            },
          )),
    );
  }
}
