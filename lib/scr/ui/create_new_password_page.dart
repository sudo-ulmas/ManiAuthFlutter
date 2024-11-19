import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mani_auth_plugin/scr/bloc/forgot_password_bloc/forgot_password_bloc.dart';
import 'package:mani_auth_plugin/scr/ui/cancel_button.dart';
import 'package:mani_auth_plugin/scr/ui/date_picker_field.dart';
import 'package:mani_auth_plugin/scr/util/app_router.dart';
import 'package:mani_auth_plugin/scr/util/l10n/l10n.dart';
import 'package:mani_uikit/mani_uikit.dart';

class CreateNewPasswordPage extends StatefulWidget {
  const CreateNewPasswordPage({super.key});

  @override
  State<CreateNewPasswordPage> createState() => _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends State<CreateNewPasswordPage> {
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();

  @override
  void initState() {
    passwordController.addListener(() {
      setState(() {});
    });

    repeatPasswordController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    repeatPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (BuildContext context, ForgotPasswordState state) {
        if (state is ForgotPasswordSuccess) {
          context.go(PagePath.auth);
        }
      },
      builder: (context, state) {
        return SharedScaffold(
          isLoading: state is ForgotPasswordLoading,
          actionButton: const CancelButton(),
          child: ColoredBox(
            color: Colors.black.withOpacity(0),
            child: SingleChildScrollView(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: constraints.maxHeight,
                      minHeight: 1.sh - MediaQuery.of(context).viewInsets.top - kToolbarHeight.h - 110.h,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SharedCard(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    context.l10n.newPassword,
                                    style: context.textTheme.titleTextStyle,
                                  ),
                                  const SizedBox(
                                    height: AppDimensions.verticalSmallGap,
                                  ),
                                  Text(
                                    context.l10n.createPassword,
                                    style: context.textTheme.subtitleTextStyle,
                                  ),
                                  SizedBox(
                                    height: AppDimensions.verticalBigGap.h,
                                  ),
                                  InputTextField(
                                    controller: passwordController,
                                    hintText: context.l10n.password,
                                    isPassword: true,
                                  ),
                                  SizedBox(
                                    height: AppDimensions.verticalMediumGap.h,
                                  ),
                                  InputTextField(
                                    controller: repeatPasswordController,
                                    hintText: context.l10n.repeatPassword,
                                    isPassword: true,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: AppDimensions.verticalStandardGap,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom + AppDimensions.verticalBigGap,
                          ).r,
                          child: SharedButton(
                            disabled: passwordController.text.isEmpty || repeatPasswordController.text.isEmpty,
                            title: context.l10n.letsContinue,
                            onTap: () => context.read<ForgotPasswordBloc>().add(
                                  ForgotPasswordEvent.newPasswordSubmittted(
                                    password: passwordController.text,
                                    passwordCp: repeatPasswordController.text,
                                  ),
                                ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
