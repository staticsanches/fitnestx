import 'package:flutter/widgets.dart';

import '../fitx_ui.dart';

class FitxGradientIcon extends StatelessWidget {
  final IconData icon;
  final Gradient gradient;
  final double size;

  const FitxGradientIcon.blue({
    Key? key,
    required IconData icon,
    double size = 24,
  }) : this._(
          key: key,
          icon: icon,
          gradient: FitxGradients.blueLinear,
          size: size,
        );

  const FitxGradientIcon.purple({
    Key? key,
    required IconData icon,
    double size = 24,
  }) : this._(
          key: key,
          icon: icon,
          gradient: FitxGradients.purpleLinear,
          size: size,
        );

  const FitxGradientIcon._({
    Key? key,
    required this.icon,
    required this.gradient,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(bounds),
      child: Icon(icon, size: size, color: FitxColors.white),
    );
  }
}
