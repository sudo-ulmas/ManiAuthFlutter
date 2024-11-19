import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mani_auth_plugin/scr/bloc/forgot_password_bloc/forgot_password_bloc.dart';
import 'package:mani_auth_plugin/scr/ui/auth_page.dart';
import 'package:mani_auth_plugin/scr/ui/cancel_button.dart';
import 'package:mani_auth_plugin/scr/util/app_router.dart';
import 'package:mani_auth_plugin/scr/util/l10n/l10n.dart';
import 'package:mani_uikit/mani_uikit.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (BuildContext context, state) {
        if (state is ForgotPasswordCheckSuccess) {
          context.push(
            '${PagePath.auth}/${PagePath.forgotPassword}/${PagePath.forgotPasswordOtp}',
            extra: state.phoneNumber,
          );
        } else if (state is ForgotPasswordError) {
          HapticFeedback.heavyImpact();
          AppSnackbar(error: state.e).build(context);
        }
      },
      builder: (context, state) => SharedScaffold(
        withBackButton: true,
        isLoading: state is ForgotPasswordLoading,
        actionButton: const CancelButton(),
        child: const ForgotPasswordView(),
      ),
    );
  }
}

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final maskFormatter = MaskTextInputFormatter(
    mask: '## ### ## ##',
    filter: {'#': RegExp('[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black.withOpacity(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SharedCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.recoverPassword,
                  style: context.textTheme.titleTextStyle,
                ),
                const SizedBox(height: AppDimensions.verticalSmallGap),
                Text(
context.l10n.enterYourPhone,
                  style: context.textTheme.subtitleTextStyle,
                ),
                const SizedBox(height: AppDimensions.verticalBigGap),
                InputTextField(
                  onChanged: (value) {
                    if (maskFormatter.isFill()) {
                      FocusScope.of(context).unfocus();
                    }
                    setState(() {});
                  },
                  keyboardType: TextInputType.phone,
                  inputFormatters: [maskFormatter],
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                      left: AppDimensions.defaultPadding,
                      right: 4,
                      top: 2.5,
                    ),
                    child: Text(
                      '+998',
                      style: context.textTheme.inputTextStyle,
                    ),
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
              disabled: !maskFormatter.isFill(),
              title:context.l10n.letsContinue,
              onTap: () => context.read<ForgotPasswordBloc>().add(
                    ForgotPasswordEvent.phoneSubmitted(
                      maskFormatter.getUnmaskedText(),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
