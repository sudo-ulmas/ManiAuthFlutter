import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mani_auth_plugin/scr/bloc/my_id_bloc/my_id_bloc.dart';
import 'package:mani_auth_plugin/scr/model/error_handler.dart';
import 'package:mani_auth_plugin/scr/model/residence_type.dart';
import 'package:mani_auth_plugin/scr/ui/cancel_button.dart';
import 'package:mani_auth_plugin/scr/ui/date_picker_field.dart';
import 'package:mani_auth_plugin/scr/util/l10n/l10n.dart';
import 'package:mani_uikit/mani_uikit.dart';

class MyIdPage extends StatefulWidget {
  const MyIdPage({this.phoneNumber, this.accessToken, this.refreshToken, super.key});
  final String? phoneNumber;
  final String? accessToken;
  final String? refreshToken;

  @override
  State<MyIdPage> createState() => _MyIdPageState();
}

class _MyIdPageState extends State<MyIdPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MyIdBloc(context.read())..add(MyIdEvent.initialize(phoneNumber: widget.phoneNumber, accessToken: widget.accessToken)),
      child: BlocListener<MyIdBloc, MyIdState>(
        listener: (BuildContext context, state) {
          if (state.authStatus == MyIdAuthStatus.error) {
            HapticFeedback.heavyImpact();
            Future<void>.delayed(
              const Duration(milliseconds: 500),
            ).then(
              (value) => AppSnackbar(
                error: const ErrorHandler(10000000),
                rawMessage: state.error,
              ).build(context),
            );
          } else if (state.authStatus == MyIdAuthStatus.authenticated) {
            if (widget.phoneNumber == null) {
              Navigator.of(context, rootNavigator: true).pop((
                widget.accessToken ?? '',
                widget.refreshToken ?? '',
              ));
            } else {
              context.pop(true);
            }
          }
        },
        child: MyIdView(
          phoneNumber: widget.phoneNumber,
        ),
      ),
    );
  }
}

class MyIdView extends StatelessWidget {
  const MyIdView({this.phoneNumber, super.key});
  final String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    final smallScreen = MediaQuery.of(context).size.height < 700;
    return BlocBuilder<MyIdBloc, MyIdState>(
      builder: (context, state) {
        return SharedScaffold(
          actionButton: const CancelButton(),
          withBackButton: true,
          isLoading: state.authStatus == MyIdAuthStatus.loading,
          child: SingleChildScrollView(
            child: LayoutBuilder(
              builder: (context, constraints) => ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.minHeight,
                  maxHeight: !smallScreen
                      ? double.infinity
                      : MediaQuery.of(context).size.height -
                          MediaQuery.of(context).viewInsets.top -
                          kToolbarHeight -
                          110,
                ),
                child: Column(
                  mainAxisAlignment: smallScreen ? MainAxisAlignment.start : MainAxisAlignment.spaceBetween,
                  children: [
                    SharedCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.l10n.identification,
                            style: context.textTheme.titleTextStyle,
                          ),
                          const SizedBox(
                            height: AppDimensions.verticalSmallGap,
                          ),
                          Text(
                            context.l10n.youNeedToPassIdentification,
                            style: context.textTheme.subtitleTextStyle,
                          ),
                          const SizedBox(height: AppDimensions.verticalBigGap),
                          Text(
                            context.l10n.passportNumberOfPinfl,
                            style: context.textTheme.inputTitleTextStyle,
                          ),
                          const SizedBox(
                            height: AppDimensions.verticalRegularGap,
                          ),
                          InputTextField(
                            value: state.passportId,
                            lengthLimit: state.passportId.lengthLimit(),
                            textCapitalization: TextCapitalization.characters,
                            hintText: context.l10n.passportNumberOfPinfl,
                            keyboardType: state.passportId.matchKeyboard(),
                            onChanged: (value) => context.read<MyIdBloc>().add(MyIdEvent.passportIdChanged(value)),
                          ),
                          const SizedBox(height: 14),
                          Text(
                            context.l10n.dateOfBirth,
                            style: context.textTheme.inputTitleTextStyle,
                          ),
                          const SizedBox(
                            height: AppDimensions.verticalRegularGap,
                          ),
                          DatePickerField(
                            onDateSelected: (date) => context.read<MyIdBloc>().add(MyIdEvent.dateOfBirthChanged(date)),
                            selectedDate: state.dateOfBirth,
                          ),
                          const SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: AppDimensions.gap,
                                ),
                                child: Text(
                                  context.l10n.resident,
                                  style: context.textTheme.inputTextStyle,
                                ),
                              ),
                              CupertinoSwitch(
                                activeColor: context.colorScheme.primaryColor,
                                value: state.residencyType == ResidenceType.resident,
                                onChanged: (v) {
                                  context.read<MyIdBloc>().add(
                                        MyIdEvent.residencyChanged(resident: v),
                                      );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppDimensions.defaultPadding),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: SharedButton(
                        title: context.l10n.letsContinue,
                        disabled: !state.dataIsValid,
                        onTap: () {
                          context.read<MyIdBloc>().add(
                                const MyIdEvent.continueButtonTapped(),
                              );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
