import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mani_auth_plugin/scr/ui/auth_page.dart';
import 'package:mani_auth_plugin/scr/util/l10n/l10n.dart';
import 'package:mani_uikit/mani_uikit.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class DatePickerField extends StatefulWidget {
  const DatePickerField({
    required this.onDateSelected,
    required this.selectedDate,
    this.label,
    super.key,
  });

  final void Function(DateTime? date) onDateSelected;
  final DateTime? selectedDate;
  final String? label;

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  final maskFormatter = MaskTextInputFormatter(
    mask: '##.##.####',
    filter: {'#': RegExp('[0-9]')},
  );
  final controller = TextEditingController();

  @override
  void didUpdateWidget(covariant DatePickerField oldWidget) {
    if (widget.selectedDate != null && widget.selectedDate!.formatForMyId != controller.text) {
      controller.text = widget.selectedDate!.formatForMyId;
      maskFormatter.updateMask(
        mask: '##.##.####',
        filter: {'#': RegExp('[0-9]')},
        newValue: TextEditingValue(text: controller.text),
      );
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => InputTextField(
        inputFormatters: [maskFormatter],
        hintText: widget.label ?? context.l10n.ddmmyyy,
        controller: controller,
        keyboardType: TextInputType.number,
        suffixIcon: GestureDetector(
          onTap: () => showCupertinoModalPopup<void>(
            context: context,
            builder: (context) => SizedBox(
              height: 291,
              child: DefaultTextStyle(
                style: context.textTheme.titleTextStyle,
                child: CustomCupertinoDatePicker(
                  selectedDate: widget.selectedDate,
                  itemExtent: AppDimensions.buttonHeight,
                  onSelectedItemChanged: (date) {
                    controller.text = date.formatForMyId;
                    maskFormatter.updateMask(
                      mask: '##.##.####',
                      filter: {'#': RegExp('[0-9]')},
                      newValue: TextEditingValue(text: controller.text),
                    );
                    widget.onDateSelected(date);
                  },
                ),
              ),
            ),
          ),
          child: SvgIcon(
            icon: Assets.icons.calendar,
            width: 24,
            height: 24,
            fit: BoxFit.none,
          ),
        ),
        onChanged: (val) {
          if (maskFormatter.isFill()) {
            widget.onDateSelected(val.toDateTime());
          } else {
            widget.onDateSelected(null);
          }
        },
      );
}

enum _SelectorType { day, month, year }

class CustomCupertinoDatePicker extends StatefulWidget {
  const CustomCupertinoDatePicker({
    required this.itemExtent,
    required this.onSelectedItemChanged,
    super.key,
    this.minDate,
    this.maxDate,
    this.selectedDate,
    this.selectedStyle,
    this.unselectedStyle,
    this.disabledStyle,
    this.backgroundColor,
    this.squeeze = 1.45,
    this.diameterRatio = 1.1,
    this.magnification = 1.0,
    this.offAxisFraction = 0.0,
    this.useMaginifier = false,
    this.selectionOverlay = const CupertinoPickerDefaultSelectionOverlay(),
  });
  final double itemExtent;
  final Widget selectionOverlay;
  final double diameterRatio;
  final Color? backgroundColor;
  final double offAxisFraction;
  final bool useMaginifier;
  final double magnification;
  final double squeeze;
  final void Function(DateTime) onSelectedItemChanged;
  final TextStyle? selectedStyle;
  final TextStyle? unselectedStyle;
  final TextStyle? disabledStyle;
  final DateTime? minDate;
  final DateTime? maxDate;
  final DateTime? selectedDate;
  @override
  State<CustomCupertinoDatePicker> createState() => _CustomCupertinoDatePickerState();
}

class _CustomCupertinoDatePickerState extends State<CustomCupertinoDatePicker> {
  late DateTime _minDate;
  late DateTime _maxDate;
  late DateTime _selectedDate;
  late int _selectedDayIndex;
  late int _selectedMonthIndex;
  late int _selectedYearIndex;
  late final FixedExtentScrollController _dayScrollController;
  late final FixedExtentScrollController _monthScrollController;
  late final FixedExtentScrollController _yearScrollController;
  final _days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  late List<String> _months;

  @override
  void initState() {
    super.initState();
    _validateDates();
    _dayScrollController = FixedExtentScrollController();
    _monthScrollController = FixedExtentScrollController();
    _yearScrollController = FixedExtentScrollController();
    _initDates();
  }

  @override
  void didChangeDependencies() {
    _months = [
      context.l10n.january,
      context.l10n.february,
      context.l10n.march,
      context.l10n.april,
      context.l10n.may,
      context.l10n.june,
      context.l10n.july,
      context.l10n.august,
      context.l10n.september,
      context.l10n.october,
      context.l10n.november,
      context.l10n.december,
    ];
    super.didChangeDependencies();
  }

  void _validateDates() {
    if (widget.minDate != null && widget.maxDate != null) {
      assert(
        !widget.minDate!.isAfter(widget.maxDate!),
        'minDate should be before maxDate',
      );
    }
    if (widget.minDate != null && widget.selectedDate != null) {
      assert(
        !widget.minDate!.isAfter(widget.selectedDate!),
        'minDate should be before selectedDate',
      );
    }
    if (widget.maxDate != null && widget.selectedDate != null) {
      assert(
        !widget.selectedDate!.isAfter(widget.maxDate!),
        'maxDate should be after selectedDate',
      );
    }
  }

  void _initDates() {
    final currentDate = DateTime.now();
    _minDate = widget.minDate ?? DateTime(currentDate.year - 100);
    _maxDate = widget.maxDate ?? DateTime(currentDate.year + 100);
    if (widget.selectedDate != null) {
      _selectedDate = widget.selectedDate!;
    } else if (!currentDate.isBefore(_minDate) && !currentDate.isAfter(_maxDate)) {
      _selectedDate = currentDate;
    } else {
      _selectedDate = _minDate;
    }
    _selectedDayIndex = _selectedDate.day - 1;
    _selectedMonthIndex = _selectedDate.month - 1;
    _selectedYearIndex = _selectedDate.year - _minDate.year;
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => [
        _scrollList(_dayScrollController, _selectedDayIndex),
        _scrollList(_monthScrollController, _selectedMonthIndex),
        _scrollList(_yearScrollController, _selectedYearIndex),
      ],
    );
  }

  void _scrollList(FixedExtentScrollController controller, int index) {
    controller.animateToItem(
      index,
      curve: Curves.easeIn,
      duration: const Duration(milliseconds: 3),
    );
  }

  bool _isLeapYear() {
    final year = _minDate.year + _selectedYearIndex;
    return year % 4 == 0 && (year % 100 != 0 || (year % 100 == 0 && year % 400 == 0));
  }

  int _numberOfDays() {
    if (_selectedMonthIndex == 1) {
      _days[1] = _isLeapYear() ? 29 : 28;
    }
    return _days[_selectedMonthIndex];
  }

  void _onSelectedItemChanged(int index, _SelectorType type) {
    DateTime temp;
    switch (type) {
      case _SelectorType.day:
        temp = DateTime(
          _minDate.year + _selectedYearIndex,
          _selectedMonthIndex + 1,
          index + 1,
        );
      case _SelectorType.month:
        temp = DateTime(
          _minDate.year + _selectedYearIndex,
          index + 1,
          _selectedDayIndex + 1,
        );
      case _SelectorType.year:
        temp = DateTime(
          _minDate.year + index,
          _selectedMonthIndex + 1,
          _selectedDayIndex + 1,
        );
    }

    if (temp.isBefore(_minDate) || temp.isAfter(_maxDate)) {
      switch (type) {
        case _SelectorType.day:
          _dayScrollController.jumpToItem(_selectedDayIndex);
        case _SelectorType.month:
          _monthScrollController.jumpToItem(_selectedMonthIndex);
        case _SelectorType.year:
          _yearScrollController.jumpToItem(_selectedYearIndex);
      }
      return;
    }
    _selectedDate = temp;
    switch (type) {
      case _SelectorType.day:
        _selectedDayIndex = index;
      case _SelectorType.month:
        _selectedMonthIndex = index;
        if (_selectedMonthIndex == 1 && _selectedDayIndex > 27) {
          _selectedDayIndex = _isLeapYear() ? 28 : 27;
        }
        if (_selectedDayIndex == 30 && _days[_selectedMonthIndex] == 30) {
          _selectedDayIndex = 29;
        }
      case _SelectorType.year:
        _selectedYearIndex = index;
        if (!_isLeapYear() && _selectedMonthIndex == 1 && _selectedDayIndex == 28) {
          _selectedDayIndex = 27;
        }
    }
    setState(() {});
    widget.onSelectedItemChanged(_selectedDate);
  }

  bool _isDisabled(int index, _SelectorType type) {
    DateTime temp;
    switch (type) {
      case _SelectorType.day:
        temp = DateTime(
          _minDate.year + _selectedYearIndex,
          _selectedMonthIndex + 1,
          index + 1,
        );
      case _SelectorType.month:
        temp = DateTime(
          _minDate.year + _selectedYearIndex,
          index + 1,
          _selectedDayIndex + 1,
        );
      case _SelectorType.year:
        temp = DateTime(
          _minDate.year + index,
          _selectedMonthIndex + 1,
          _selectedDayIndex + 1,
        );
    }
    return temp.isAfter(_maxDate) || temp.isBefore(_minDate);
  }

  Widget _selector({
    required List<dynamic> values,
    required int selectedValueIndex,
    required bool Function(int) isDisabled,
    required void Function(int) onSelectedItemChanged,
    required FixedExtentScrollController scrollController,
    required Widget selectionOverlay,
    required Alignment alignment,
    required EdgeInsets padding,
  }) {
    return CupertinoPicker.builder(
      childCount: values.length,
      squeeze: 1,
      itemExtent: AppDimensions.buttonHeight,
      scrollController: scrollController,
      diameterRatio: 4,
      selectionOverlay: selectionOverlay,
      onSelectedItemChanged: onSelectedItemChanged,
      itemBuilder: (context, index) => Container(
        padding: padding,
        height: widget.itemExtent,
        alignment: alignment,
        child: Text(
          '${values[index]}',
          style: isDisabled(index)
              ? context.textTheme.titleTextStyle.copyWith(
                  color: context.colorScheme.inputTextColor.withOpacity(0.6),
                  fontWeight: FontWeight.bold,
                )
              : context.textTheme.titleTextStyle.copyWith(
                  color: context.colorScheme.inputTextColor,
                  fontWeight: FontWeight.bold,
                ),
        ),
      ),
    );
  }

  Widget _daySelector() {
    return _selector(
      values: List.generate(_numberOfDays(), (index) => index + 1),
      selectedValueIndex: _selectedDayIndex,
      scrollController: _dayScrollController,
      padding: const EdgeInsets.only(left: AppDimensions.horizontalMediumGap),
      isDisabled: (index) => _isDisabled(index, _SelectorType.day),
      alignment: Alignment.centerLeft,
      selectionOverlay: const CupertinoPickerDefaultSelectionOverlay(
        capEndEdge: false,
      ),
      onSelectedItemChanged: (v) => _onSelectedItemChanged(
        v,
        _SelectorType.day,
      ),
    );
  }

  Widget _monthSelector() {
    return _selector(
      values: _months,
      selectedValueIndex: _selectedMonthIndex,
      padding: EdgeInsets.zero,
      scrollController: _monthScrollController,
      isDisabled: (index) => _isDisabled(index, _SelectorType.month),
      alignment: Alignment.center,
      selectionOverlay: const CupertinoPickerDefaultSelectionOverlay(
        capStartEdge: false,
        capEndEdge: false,
      ),
      onSelectedItemChanged: (v) => _onSelectedItemChanged(
        v,
        _SelectorType.month,
      ),
    );
  }

  Widget _yearSelector() {
    return _selector(
      values: List.generate(
        _maxDate.year - _minDate.year + 1,
        (index) => _minDate.year + index,
      ),
      selectedValueIndex: _selectedYearIndex,
      alignment: Alignment.centerRight,
      scrollController: _yearScrollController,
      padding: const EdgeInsets.only(right: AppDimensions.horizontalMediumGap),
      selectionOverlay: const CupertinoPickerDefaultSelectionOverlay(capStartEdge: false),
      isDisabled: (index) => _isDisabled(index, _SelectorType.year),
      onSelectedItemChanged: (v) => _onSelectedItemChanged(
        v,
        _SelectorType.year,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: AppDimensions.defaultPadding,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(context.l10n.dateOfBirth),
          const SizedBox(height: 23),
          Expanded(
            child: Row(
              children: [
                Flexible(child: _daySelector()),
                Flexible(child: _monthSelector()),
                Flexible(child: _yearSelector()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _dayScrollController.dispose();
    _monthScrollController.dispose();
    _yearScrollController.dispose();
    super.dispose();
  }
}

class CupertinoPickerDefaultSelectionOverlay extends StatelessWidget {
  const CupertinoPickerDefaultSelectionOverlay({
    super.key,
    this.background = CupertinoColors.tertiarySystemFill,
    this.capStartEdge = true,
    this.capEndEdge = true,
  });

  final bool capStartEdge;

  final bool capEndEdge;
  final Color background;

  static const double _defaultSelectionOverlayHorizontalMargin = 0;

  static const double _defaultSelectionOverlayRadius = 12;

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(_defaultSelectionOverlayRadius);

    return Container(
      margin: EdgeInsetsDirectional.only(
        start: capStartEdge ? _defaultSelectionOverlayHorizontalMargin : 0,
        end: capEndEdge ? _defaultSelectionOverlayHorizontalMargin : 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.horizontal(
          start: capStartEdge ? radius : Radius.zero,
          end: capEndEdge ? radius : Radius.zero,
        ),
        color: CupertinoDynamicColor.resolve(
          background.withOpacity(0.08),
          context,
        ),
      ),
    );
  }
}
