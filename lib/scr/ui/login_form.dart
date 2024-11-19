import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mani_auth_plugin/scr/bloc/login_bloc/login_bloc.dart';
import 'package:mani_auth_plugin/scr/util/app_router.dart';
import 'package:mani_auth_plugin/scr/util/l10n/l10n.dart';
import 'package:mani_uikit/mani_uikit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          SharedCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.signInToYagona,
                  style: context.textTheme.titleTextStyle,
                ),
                const SizedBox(
                  height: AppDimensions.verticalSmallGap,
                ),
                Text(
                  context.l10n.signInDescription,
                  style: context.textTheme.subtitleTextStyle,
                ),
                SizedBox(
                  height: AppDimensions.verticalBigGap.h,
                ),
                InputTextField(
                  textInputAction: TextInputAction.next,
                  hintText: context.l10n.login,
                  controller: usernameController,
                  onSubmitted: (s) {
                    FocusScope.of(context).requestFocus(focusNode);
                  },
                ),
                const SizedBox(height: AppDimensions.verticalMediumGap),
                InputTextField(
                  textInputAction: TextInputAction.send,
                  focusNode: focusNode,
                  onSubmitted: (s) {
                    if (passwordController.text.isNotEmpty && usernameController.text.isNotEmpty) {
                      context.read<LoginBloc>().add(
                            LoginEvent.buttonPressed(
                              username: usernameController.text,
                              password: passwordController.text,
                            ),
                          );
                    }
                  },
                  controller: passwordController,
                  onChanged: (value) {
                    setState(() {});
                  },
                  isPassword: true,
                  hintText: context.l10n.password,
                ),
                const SizedBox(height: AppDimensions.verticalBigGap),
                GestureDetector(
                  onTap: () => context.push('${PagePath.auth}/${PagePath.forgotPassword}'),
                  child: Text(
                    context.l10n.recoverPassword,
                    style: context.textTheme.highlightedTextStyle,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppDimensions.defaultPadding),
          SharedButton(
            disabled: passwordController.text.isEmpty || usernameController.text.isEmpty,
            title: context.l10n.letsContinue,
            onTap: () {
              context.read<LoginBloc>().add(
                    LoginEvent.buttonPressed(
                      username: usernameController.text,
                      password: passwordController.text,
                    ),
                  );
            },
          ),
        ],
      );
}
