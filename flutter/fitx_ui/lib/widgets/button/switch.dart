import 'package:flutter/widgets.dart';

import '../../fitx_ui.dart';
import 'base.dart';

class AnimatedSwitch extends StatelessWidget with BaseButtonMixin {
  final bool value;
  final void Function()? onPressed;
  final Widget child;

  AnimatedSwitch(
    this.value, {
    required Key? key,
    required ValueChanged<bool>? onChanged,
  })  : this.onPressed = onChanged == null ? null : (() => onChanged(!value)),
        this.child = AnimatedAlign(
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,
          duration: const Duration(milliseconds: 300),
          child: Container(
            width: 14,
            height: 14,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: FitxColors.white,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 5),
          ),
        ),
        super(key: key);

  @override
  BorderRadius get borderRadius => const BorderRadius.all(Radius.circular(50));

  @override
  BoxConstraints get constraints =>
      const BoxConstraints.tightFor(width: 44, height: 24);

  @override
  BoxDecoration get decoration => onPressed != null && value
      ? const BoxDecoration(
          gradient: FitxGradients.purpleLinear,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        )
      : const BoxDecoration(
          color: FitxColors.grey3,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        );

  @override
  Widget innerChild(BuildContext _) => child;
}
