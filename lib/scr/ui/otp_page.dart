// ignore_for_file: lines_longer_than_80_chars
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mani_auth_plugin/scr/bloc/my_id_bloc/my_id_bloc.dart';
import 'package:mani_auth_plugin/scr/bloc/otp_bloc/otp_bloc.dart';
import 'package:mani_auth_plugin/scr/model/auth_path.dart';
import 'package:mani_auth_plugin/scr/model/error_handler.dart';
import 'package:mani_auth_plugin/scr/repository/auth_repository.dart';
import 'package:mani_auth_plugin/scr/ui/auth_page.dart';
import 'package:mani_auth_plugin/scr/ui/cancel_button.dart';
import 'package:mani_auth_plugin/scr/util/app_router.dart';
import 'package:mani_auth_plugin/scr/util/dio_client.dart';
import 'package:mani_auth_plugin/scr/util/l10n/l10n.dart';
import 'package:mani_uikit/mani_uikit.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({required this.info, super.key});
  final (String, AuthPath) info;

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final controller = TextEditingController();
  final focusNode = FocusNode();
  String currentTextValue = '';

  late Timer timer;
  int stopwatch = 60;
  String time = '01:00';
  late String phoneNumber;
  late AuthPath path;

  @override
  void initState() {
    phoneNumber = widget.info.$1;
    path = widget.info.$2;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      focusNode.requestFocus();
    });
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        if (stopwatch > 0) {
          stopwatch -= 1;
          time = '0${stopwatch ~/ 60}:${stopwatch ~/ 10}${stopwatch % 10}';
        }
      });
    });
    controller.addListener(() {
      if (controller.text.length - currentTextValue.length > 1) {
        switch (path) {
          case AuthPath.login:
            context.read<OtpBloc>().add(
                  OtpEvent.submittedLogin(
                    otp: controller.text,
                    phoneNumber: phoneNumber,
                  ),
                );
          case AuthPath.registration:
            context.read<OtpBloc>().add(
                  OtpEvent.submittedRegistration(
                    otp: controller.text,
                    phoneNumber: phoneNumber,
                  ),
                );
        }
      }
      currentTextValue = controller.text;

      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OtpBloc(context.read()),
      child: BlocConsumer<OtpBloc, OtpState>(
        listener: (context, state) {
          if (state is OtpResendSuccess) {
            HapticFeedback.mediumImpact();
            setState(() {
              stopwatch = 59;
            });
          } else if (state is OtpSuccess) {
            if (path == AuthPath.login) {
              if (state.authModel?.identified ?? false) {
                Navigator.of(context, rootNavigator: true).pop((
                  state.authModel?.accessToken,
                  state.authModel?.refreshToken,
                ));
              } else {
                final myidState = context.read<MyIdBloc>().state;
                if (myidState.dateOfBirth != null && myidState.passportId.isNotEmpty && myidState.dataIsValid) {
                  context.read<MyIdBloc>().add(MyIdEvent.initialize(accessToken: state.authModel!.accessToken));
                  context.read<MyIdBloc>().add(const MyIdEvent.continueButtonTapped());
                } else {
                  context.go(PagePath.myId, extra: state.authModel);
                }
              }
            } else if (path == AuthPath.registration) {
              context.go(
                '${PagePath.auth}/${PagePath.createLogin}',
                extra: phoneNumber,
              );
            }
          } else if (state is OtpError) {
            HapticFeedback.heavyImpact();
            AppSnackbar(error: state.error).build(context);
            controller.clear();
          }
        },
        builder: (context, state) => BlocListener<MyIdBloc, MyIdState>(
          listener: (BuildContext context, MyIdState myIdState) {
            if (myIdState.authStatus == MyIdAuthStatus.error) {
              HapticFeedback.heavyImpact();
              Future<void>.delayed(
                const Duration(milliseconds: 500),
              ).then(
                (value) => AppSnackbar(
                  error: const ErrorHandler(1000),
                  rawMessage: myIdState.error,
                ).build(context),
              );
            } else if (myIdState.authStatus == MyIdAuthStatus.authenticated) {
              if (state is OtpSuccess) {
                Navigator.of(context, rootNavigator: true).pop((
                  state.authModel?.accessToken,
                  state.authModel?.refreshToken,
                ));

                SystemNavigator.pop();
              }
            }
          },
          child: SharedScaffold(
            isLoading: state is OtpInProgress,
            actionButton: const CancelButton(),
            child: ColoredBox(
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SharedCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.l10n.otpCode,
                          style: context.textTheme.titleTextStyle,
                        ),
                        const SizedBox(height: AppDimensions.verticalSmallGap),
                        Text(
                          '${context.l10n.codeSentTo} +998 $phoneNumber',
                          style: context.textTheme.subtitleTextStyle,
                        ),
                        const SizedBox(height: AppDimensions.verticalBigGap),
                        Pinput(
                          focusNode: focusNode,
                          controller: controller,
                          length: 6,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          forceErrorState: state is OtpError,
                          errorPinTheme: PinTheme(
                            width: double.infinity,
                            height: 60,
                            textStyle: context.textTheme.inputTextStyle,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(15)),
                              color: const Color(0xffF4F6F8),
                              border: Border.all(color: Colors.red),
                            ),
                          ),
                          defaultPinTheme: PinTheme(
                            width: double.infinity,
                            height: 60,
                            textStyle: context.textTheme.inputTextStyle,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Color(0xffF4F6F8),
                            ),
                          ),
                        ),
                        const SizedBox(height: AppDimensions.verticalBigGap),
                        Center(
                          child: switch (stopwatch) {
                            0 => GestureDetector(
                                onTap: () {
                                  context.read<OtpBloc>().add(
                                        OtpEvent.otpResendRequested(
                                          phoneNumber,
                                          path.state,
                                        ),
                                      );
                                },
                                child: Text(
                                  context.l10n.resendOpt,
                                  style: context.textTheme.highlightedTextStyle,
                                ),
                              ),
                            _ => Center(
                                child: Text(
                                  '${context.l10n.youCanReceiveNewOtpIn} $time',
                                  style: context.textTheme.subtitleTextStyle.copyWith(fontSize: 12.sp),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom + AppDimensions.verticalBigGap,
                    ),
                    child: SharedButton(
                      title: 'continue',
                      disabled: controller.text.length != 6,
                      onTap: () {
                        switch (path) {
                          case AuthPath.login:
                            context.read<OtpBloc>().add(
                                  OtpEvent.submittedLogin(
                                    otp: controller.text,
                                    phoneNumber: phoneNumber,
                                  ),
                                );
                          case AuthPath.registration:
                            context.read<OtpBloc>().add(
                                  OtpEvent.submittedRegistration(
                                    otp: controller.text,
                                    phoneNumber: phoneNumber,
                                  ),
                                );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
