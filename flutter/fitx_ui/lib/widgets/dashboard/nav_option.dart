import 'package:flutter/material.dart';

import '../../fitx_ui.dart';
import '../fitx_gradient_icon.dart';

class NavOption extends StatelessWidget {
  final bool active;
  final FitxDashboardIcon icon;
  final void Function() onPressed;

  const NavOption({
    Key? key,
    required this.active,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onPressed,
        behavior: HitTestBehavior.translucent,
        child: SizedBox(
          width: 24,
          height: 31,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: active
                    ? FitxGradientIcon.purple(icon: icon.bold, size: 24)
                    : Icon(icon.light, color: FitxColors.grey2, size: 24),
              ),
              if (active)
                const Positioned(
                  bottom: 0,
                  left: 10,
                  child: SizedBox(
                    width: 4,
                    height: 4,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: FitxGradients.purpleLinear,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
