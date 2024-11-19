import 'package:flutter/material.dart';
import 'package:mani_uikit/mani_uikit.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({ super.key});


  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context, rootNavigator: true).pop(),
        child: Container(
          padding: const EdgeInsets.all(5),
          child: SvgIcon(
            icon: Assets.icons.cancel,
          ),
        ),
      );
}
