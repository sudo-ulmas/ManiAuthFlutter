import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mani_auth_plugin/scr/bloc/forgot_password_bloc/forgot_password_bloc.dart';
import 'package:mani_auth_plugin/scr/bloc/my_id_bloc/my_id_bloc.dart';
import 'package:mani_auth_plugin/scr/model/error_handler.dart';
import 'package:mani_auth_plugin/scr/ui/cancel_button.dart';
import 'package:mani_auth_plugin/scr/util/app_router.dart';
import 'package:mani_auth_plugin/scr/util/l10n/l10n.dart';
import 'package:mani_uikit/mani_uikit.dart';
import 'package:pinput/pinput.dart';

class ForgotPasswordOtpPage extends StatefulWidget {
  const ForgotPasswordOtpPage({required this.phoneNumber, super.key});
  final String phoneNumber;

  @override
  State<ForgotPasswordOtpPage> createState() => _ForgotPasswordOtpPageState();
}

class _ForgotPasswordOtpPageState extends State<ForgotPasswordOtpPage> {
  final controller = TextEditingController();
  final focusNode = FocusNode();
  String currentTextValue = '';

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      focusNode.requestFocus();
    });

    controller.addListener(() {
      if (controller.text.length - currentTextValue.length > 1) {
        context.read<ForgotPasswordBloc>().add(ForgotPasswordEvent.otpSubmitted(controller.text));
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
        listener: (BuildContext context, ForgotPasswordState state) {
          if (state is ForgotPasswordOtpSuccess) {
            if (state.identified) {
              final myidState = context.read<MyIdBloc>().state;
              if (myidState.dateOfBirth != null && myidState.passportId.isNotEmpty && myidState.dataIsValid) {
                context.read<MyIdBloc>().add(MyIdEvent.initialize(phoneNumber: widget.phoneNumber));
                context.read<MyIdBloc>().add(const MyIdEvent.continueButtonTapped());
              } else {
                context
                    .push(
                  '${PagePath.auth}/${PagePath.forgotPassword}/${PagePath.forgotPasswordMyId}',
                  extra: widget.phoneNumber,
                )
                    .then((identified) {
                  if (identified != null && identified as bool) {
                    context.push(
                      '${PagePath.auth}/${PagePath.forgotPassword}/${PagePath.createNewPassword}',
                    );
                  }
                });
              }
            } else {
              context.push(
                '${PagePath.auth}/${PagePath.forgotPassword}/${PagePath.createNewPassword}',
              );
            }
          } else if (state is ForgotPasswordError) {
            controller.clear();
            AppSnackbar(error: state.e).build(context);
            HapticFeedback.heavyImpact();
          }
        },
        builder: (context, state) => BlocListener<MyIdBloc, MyIdState>(
          listener: (BuildContext context, MyIdState state) {
            if (state.authStatus == MyIdAuthStatus.error) {
              HapticFeedback.heavyImpact();
              Future<void>.delayed(
                const Duration(milliseconds: 500),
              ).then(
                (value) => AppSnackbar(
                  error: const ErrorHandler(1000),
                  rawMessage: state.error,
                ).build(context),
              );
            } else if (state.authStatus == MyIdAuthStatus.authenticated) {
              context.push(
                '${PagePath.auth}/${PagePath.forgotPassword}/${PagePath.createNewPassword}',
              );
            }
          },
          child: SharedScaffold(
            isLoading: state is ForgotPasswordLoading,
            actionButton: const CancelButton(),
            child: ColoredBox(
              color: Colors.black.withOpacity(0),
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
                          context.l10n.codeSentTo,
                          style: context.textTheme.subtitleTextStyle,
                        ),
                        const SizedBox(height: AppDimensions.verticalBigGap),
                        BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
                          builder: (context, state) {
                            return Pinput(
                              focusNode: focusNode,
                              controller: controller,
                              length: 6,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              forceErrorState: state is ForgotPasswordError,
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
                            );
                          },
                        ),
                        const SizedBox(height: AppDimensions.verticalBigGap),
                        Align(
                          child: Text(
                            '${context.l10n.youCanReceiveNewOtpIn} 00:45',
                            style: context.textTheme.subtitleTextStyle.copyWith(fontSize: 12.sp),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom + AppDimensions.verticalBigGap,
                    ),
                    child: SharedButton(
                      title: context.l10n.letsContinue,
                      disabled: controller.text.length != 6,
                      onTap: () =>
                          context.read<ForgotPasswordBloc>().add(ForgotPasswordEvent.otpSubmitted(controller.text)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
