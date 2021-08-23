import 'package:flutter/widgets.dart';

import '../commons/commons.dart';
import 'fitx_text.dart';

class FitxGradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;
  final TextAlign align;

  const FitxGradientText(
    this.text, {
    Key? key,
    required this.style,
    required this.gradient,
    this.align = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: FitxText(
        text,
        style: style,
        color: FitxColors.white,
        align: align,
      ),
    );
  }
}
