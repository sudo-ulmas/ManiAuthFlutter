import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mani_auth_plugin/scr/bloc/registration/registration_bloc.dart';
import 'package:mani_auth_plugin/scr/util/app_router.dart';
import 'package:mani_auth_plugin/scr/util/l10n/l10n.dart';
import 'package:mani_uikit/mani_uikit.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final maskFormatter = MaskTextInputFormatter(
    mask: '## ### ## ##',
    filter: {'#': RegExp('[0-9]')},
  );

  @override
  Widget build(BuildContext context) => Column(
        children: [
          SharedCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.registrationInYagona,
                  style: context.textTheme.titleTextStyle,
                ),
                const SizedBox(
                  height: AppDimensions.verticalSmallGap,
                ),
                Text(
                  context.l10n.enterYourPhoneToContinue,
                  style: context.textTheme.subtitleTextStyle,
                ),
                SizedBox(height: AppDimensions.verticalBigGap),
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
                const SizedBox(
                  height: AppDimensions.verticalBigGap,
                ),
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
            disabled: !maskFormatter.isFill(),
            title: context.l10n.letsContinue,
            onTap: () => context.read<RegistrationBloc>().add(
                  RegistrationEvent.phoneSubmitted(
                    maskFormatter.getUnmaskedText(),
                  ),
                ),
          ),
        ],
      );
}
