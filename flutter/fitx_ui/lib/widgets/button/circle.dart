import 'package:flutter/widgets.dart';

import '../../fitx_ui.dart';
import 'base.dart';

class CircleButton extends StatelessWidget with BaseButtonMixin {
  final bool blue;
  final void Function()? onPressed;
  final Widget child;

  CircleButton(
    IconData icon, {
    required Key? key,
    required this.blue,
    required this.onPressed,
    required double iconSize,
  })  : this.child = Icon(
          icon,
          color: FitxColors.white,
          size: iconSize,
        ),
        super(key: key);

  @override
  BorderRadius get borderRadius => const BorderRadius.all(Radius.circular(30));

  @override
  BoxConstraints get constraints =>
      const BoxConstraints.tightFor(width: 60, height: 60);

  @override
  BoxDecoration get decoration {
    if (onPressed == null) {
      return const BoxDecoration(
        shape: BoxShape.circle,
        color: FitxColors.grey3,
        boxShadow: [FitxShadows.card],
      );
    }
    return blue
        ? const BoxDecoration(
            shape: BoxShape.circle,
            gradient: FitxGradients.blueLinear,
            boxShadow: [FitxShadows.blue],
          )
        : const BoxDecoration(
            shape: BoxShape.circle,
            gradient: FitxGradients.purpleLinear,
            boxShadow: [FitxShadows.purple],
          );
  }

  @override
  Widget innerChild(BuildContext _) => child;
}
