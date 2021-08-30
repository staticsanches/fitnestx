import 'package:flutter/widgets.dart';

import '../../fitx_ui.dart';
import 'base.dart';

class PrimaryButton extends StatelessWidget with BaseButtonMixin {
  final void Function()? onPressed;
  final Widget child;

  PrimaryButton(
    String text, {
    required Key? key,
    required this.onPressed,
    required IconData? leading,
    required double leadingSize,
    required IconData? trailing,
    required double trailingSize,
  })  : this.child = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (leading != null)
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Icon(
                  leading,
                  size: leadingSize,
                  color: FitxColors.white,
                ),
              ),
            FitxText(
              text,
              style: FitxStyles.largeTextBold,
              color: FitxColors.white,
            ),
            if (trailing != null)
              Container(
                margin: const EdgeInsets.only(left: 3),
                child: Icon(
                  trailing,
                  size: trailingSize,
                  color: FitxColors.white,
                ),
              ),
          ],
        ),
        super(key: key);

  @override
  BorderRadius get borderRadius => const BorderRadius.all(Radius.circular(99));

  @override
  BoxConstraints get constraints => const BoxConstraints.tightFor(height: 60);

  @override
  BoxDecoration get decoration => onPressed != null
      ? const BoxDecoration(
          gradient: FitxGradients.blueLinear,
          boxShadow: [FitxShadows.blue],
          borderRadius: const BorderRadius.all(Radius.circular(99)),
        )
      : const BoxDecoration(
          color: FitxColors.grey3,
          boxShadow: [FitxShadows.card],
          borderRadius: const BorderRadius.all(Radius.circular(99)),
        );

  @override
  Widget innerChild(BuildContext _) => child;
}
