import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mani_auth_plugin/scr/bloc/login_bloc/login_bloc.dart';
import 'package:mani_auth_plugin/scr/bloc/registration/registration_bloc.dart';
import 'package:mani_auth_plugin/scr/model/auth_path.dart';
import 'package:mani_auth_plugin/scr/repository/auth_repository.dart';
import 'package:mani_auth_plugin/scr/ui/cancel_button.dart';
import 'package:mani_auth_plugin/scr/ui/login_form.dart';
import 'package:mani_auth_plugin/scr/ui/registration_form.dart';
import 'package:mani_auth_plugin/scr/util/app_router.dart';
import 'package:mani_auth_plugin/scr/util/l10n/l10n.dart';
import 'package:mani_uikit/mani_uikit.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({required this.title, super.key});
  final String title;

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String? appName;
  int currentSegment = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthRepository(context.read())),
        ),
      ],
      child: BlocConsumer<RegistrationBloc, RegistrationState>(
        listener: (BuildContext context, RegistrationState state) {
          if (state is RegistrationCheckSuccess) {
            context.push(
              '${PagePath.auth}/${PagePath.otp}',
              extra: (state.phoneNumber, AuthPath.registration),
            );
          } else if (state is RegistrationError) {
            HapticFeedback.heavyImpact();
            AppSnackbar(error: state.error).build(context);
          }
        },
        builder: (context, state) {
          return BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccess) {
                context.push(
                  '${PagePath.auth}/${PagePath.otp}',
                  extra: (state.phoneNumber, AuthPath.login),
                );
              } else if (state is LoginError) {
                HapticFeedback.heavyImpact();
                AppSnackbar(error: state.error).build(context);
              }
            },
            builder: (context, state) {
              return SharedScaffold(
                isLoading: state is LoginInProgress,
                actionButton: const CancelButton(),
                child: Column(
                  children: [
                    CustomCupertinoSlidingSegmentedControl(
                      padding: const EdgeInsets.all(AppDimensions.gap).r,
                      backgroundColor: Colors.white,
                      thumbColor: context.colorScheme.primaryVariantColor,
                      groupValue: currentSegment,
                      children: {
                        0: Text(
                          context.l10n.login,
                          style: context.textTheme.buttonTextStyle.copyWith(
                            color: currentSegment == 1 ? context.colorScheme.secondaryTextColor : null,
                          ),
                        ),
                        1: Text(
                          context.l10n.registration,
                          style: context.textTheme.buttonTextStyle.copyWith(
                            color: currentSegment == 0 ? context.colorScheme.secondaryTextColor : null,
                          ),
                        ),
                      },
                      onValueChanged: (value) {
                        FocusScope.of(context).unfocus();
                        setState(() {
                          currentSegment = value!;
                        });
                      },
                    ),
                    const SizedBox(height: AppDimensions.verticalStandardGap),
                    IndexedStack(
                      index: currentSegment,
                      children: const [
                        LoginForm(),
                        RegistrationForm(),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
