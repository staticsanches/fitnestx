import 'package:flutter/widgets.dart';

class FitxText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Color color;
  final TextAlign align;

  const FitxText(
    this.text, {
    Key? key,
    required this.style,
    required this.color,
    this.align = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(color: color),
      textAlign: align,
    );
  }
}
