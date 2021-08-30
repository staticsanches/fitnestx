import 'package:flutter/widgets.dart';

import '../commons/commons.dart';
import 'fitx_text.dart';

class FitxGradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;
  final TextAlign align;

  const FitxGradientText.blue(
    String text, {
    Key? key,
    required TextStyle style,
    align = TextAlign.start,
  }) : this._(
          text,
          key: key,
          style: style,
          align: align,
          gradient: FitxGradients.blueLinear,
        );

  const FitxGradientText.purple(
    String text, {
    Key? key,
    required TextStyle style,
    align = TextAlign.start,
  }) : this._(
          text,
          key: key,
          style: style,
          align: align,
          gradient: FitxGradients.purpleLinear,
        );

  const FitxGradientText._(
    this.text, {
    Key? key,
    required this.style,
    required this.gradient,
    this.align = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(bounds),
      child: FitxText(
        text,
        style: style,
        color: FitxColors.white,
        align: align,
      ),
    );
  }
}
