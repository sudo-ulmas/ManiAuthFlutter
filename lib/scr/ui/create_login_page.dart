import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mani_auth_plugin/scr/bloc/registration/registration_bloc.dart';
import 'package:mani_auth_plugin/scr/util/app_router.dart';
import 'package:mani_auth_plugin/scr/util/l10n/l10n.dart';
import 'package:mani_uikit/mani_uikit.dart';

class CreateLoginPage extends StatefulWidget {
  const CreateLoginPage({required this.phoneNumber, super.key});
  final String phoneNumber;

  @override
  State<CreateLoginPage> createState() => _CreateLoginPageState();
}

class _CreateLoginPageState extends State<CreateLoginPage> {
  final TextEditingController loginController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController secondPasswordController = TextEditingController();

  FocusNode passwordFocusNode = FocusNode();
  FocusNode repeatPasswordFocusNode = FocusNode();
  FocusNode loginFocusNode = FocusNode();

  @override
  void dispose() {
    loginController.dispose();
    loginFocusNode.dispose();
    passwordController.dispose();
    secondPasswordController.dispose();
    passwordFocusNode.dispose();
    repeatPasswordFocusNode.dispose();
    super.dispose();
  }

  bool get hasFocus => passwordFocusNode.hasFocus || repeatPasswordFocusNode.hasFocus || loginFocusNode.hasFocus;

  @override
  Widget build(BuildContext context) {
    return SharedScaffold(
      actionButton: const SizedBox.shrink(),
      child: BlocConsumer<RegistrationBloc, RegistrationState>(
        listener: (context, state) {
          if (state is RegistrationSuccess) {
            context.replace(PagePath.auth);
          }
        },
        builder: (context, state) {
          final topViewInsets = MediaQuery.of(context).viewInsets.top;
          return SingleChildScrollView(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) => Container(
                constraints: BoxConstraints(
                  maxHeight: constraints.maxHeight,
                  minHeight:
                      MediaQuery.sizeOf(context).height - topViewInsets - kToolbarHeight - 110 + (hasFocus ? 200 : 0),
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
                                context.l10n.createLogin,
                                style: context.textTheme.titleTextStyle,
                              ),
                              const SizedBox(
                                height: AppDimensions.verticalSmallGap,
                              ),
                              Text(
                                context.l10n.createLoginDescription,
                                style: context.textTheme.subtitleTextStyle,
                              ),
                              const SizedBox(
                                height: AppDimensions.verticalBigGap,
                              ),
                              InputTextField(
                                focusNode: loginFocusNode,
                                hintText: context.l10n.login,
                                controller: loginController,
                                textInputAction: TextInputAction.next,
                                onSubmitted: (_) {
                                  FocusScope.of(context).requestFocus(passwordFocusNode);
                                },
                                onChanged: (_) {
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: AppDimensions.verticalStandardGap),
                        SharedCard(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                context.l10n.password,
                                style: context.textTheme.titleTextStyle,
                              ),
                              const SizedBox(
                                height: AppDimensions.verticalSmallGap,
                              ),
                              Text(
                                context.l10n.createPassword,
                                style: context.textTheme.subtitleTextStyle,
                              ),
                              const SizedBox(
                                height: AppDimensions.verticalBigGap,
                              ),
                              InputTextField(
                                textInputAction: TextInputAction.next,
                                onSubmitted: (_) {
                                  FocusScope.of(context).requestFocus(repeatPasswordFocusNode);
                                },
                                hintText: context.l10n.password,
                                controller: passwordController,
                                focusNode: passwordFocusNode,
                                isPassword: true,
                                onChanged: (_) {
                                  setState(() {});
                                },
                              ),
                              SizedBox(height: AppDimensions.verticalMediumGap),
                              InputTextField(
                                textInputAction: TextInputAction.send,
                                onSubmitted: (_) {
                                  if (loginController.text.isNotEmpty &&
                                      passwordController.text.isNotEmpty &&
                                      secondPasswordController.text.isNotEmpty) {
                                    context.read<RegistrationBloc>().add(
                                          RegistrationEvent.loginPasswordSubmitted(
                                            login: loginController.text,
                                            password: passwordController.text,
                                            secondPassword: secondPasswordController.text,
                                            phoneNumber: widget.phoneNumber,
                                          ),
                                        );
                                  }
                                },
                                hintText: context.l10n.repeatPassword,
                                controller: secondPasswordController,
                                focusNode: repeatPasswordFocusNode,
                                isPassword: true,
                                onChanged: (_) {
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: AppDimensions.verticalStandardGap),
                      ],
                    ),
                    Column(
                      children: [
                        SharedButton(
                          title: context.l10n.letsContinue,
                          disabled: loginController.text.isEmpty ||
                              passwordController.text.isEmpty ||
                              secondPasswordController.text.isEmpty,
                          onTap: () => context.read<RegistrationBloc>().add(
                                RegistrationEvent.loginPasswordSubmitted(
                                  login: loginController.text,
                                  password: passwordController.text,
                                  secondPassword: secondPasswordController.text,
                                  phoneNumber: widget.phoneNumber,
                                ),
                              ),
                        ),
                        // SizedBox(height: 360),
                        Container(
                          height: hasFocus ? 360 : 0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
