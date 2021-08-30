import 'dart:math' as math;

import 'package:flutter/widgets.dart';

import '../../fitx_ui.dart';
import 'base.dart';

class CircleWithProgressButton extends StatelessWidget {
  final Widget _button;

  CircleWithProgressButton(
    IconData icon, {
    required Key? key,
    required void Function()? onPressed,
    required double percentage,
  })  : this._button = Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              CustomPaint(
                size: const Size(60, 60),
                painter: _ProgressPainter(
                  active: onPressed != null,
                  percentage: percentage,
                ),
              ),
              _BlueCircleButton(icon, onPressed: onPressed),
            ],
          ),
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) => _button;
}

class _BlueCircleButton extends StatelessWidget with BaseButtonMixin {
  final void Function()? onPressed;
  final Widget child;

  _BlueCircleButton(
    IconData icon, {
    required this.onPressed,
  }) : this.child = Icon(
          icon,
          color: FitxColors.white,
          size: 18,
        );

  @override
  BorderRadius get borderRadius => const BorderRadius.all(Radius.circular(25));

  @override
  BoxConstraints get constraints =>
      const BoxConstraints.tightFor(width: 50, height: 50);

  @override
  BoxDecoration get decoration => onPressed == null
      ? const BoxDecoration(
          shape: BoxShape.circle,
          color: FitxColors.grey3,
        )
      : const BoxDecoration(
          shape: BoxShape.circle,
          gradient: FitxGradients.blueLinear,
        );

  @override
  Widget innerChild(BuildContext _) => child;
}

class _ProgressPainter extends CustomPainter {
  final bool active;
  final double percentage;

  const _ProgressPainter({
    required this.active,
    required this.percentage,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final rect = Rect.fromCircle(center: center, radius: size.width / 2);

    final circlePaint = Paint()
      ..color = FitxColors.border
      ..strokeWidth = 0.5
      ..style = PaintingStyle.stroke;

    final arcPaint = Paint()
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    if (active) {
      arcPaint.shader = FitxGradients.blueLinear.createShader(rect);
    } else {
      arcPaint.color = FitxColors.grey3;
    }

    canvas.drawCircle(center, size.width / 2, circlePaint);
    canvas.drawArc(
      rect,
      -math.pi / 2,
      2 * math.pi * percentage,
      false,
      arcPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
