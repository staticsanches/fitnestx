import 'dart:math' as math;

import 'package:flutter/widgets.dart';

class FitxGradients {
  // linear-gradient(274.42deg, #92A3FD 0%, #9DCEFF 124.45%)
  static const blueLinear = LinearGradient(
    colors: [
      Color(0xFF92A3FD),
      Color(0xFF9DCEFF),
    ],
    begin: _Alignment.begin(0),
    end: _Alignment.end(124.45),
    transform: _GradientRotation(274.42),
  );

  // linear-gradient(274.42deg, #C58BF2 0%, #EEA4CE 124.45%)
  static const purpleLinear = LinearGradient(
    colors: [
      Color(0xFFC58BF2),
      Color(0xFFEEA4CE),
    ],
    begin: _Alignment.begin(0),
    end: _Alignment.end(124.45),
    transform: _GradientRotation(274.42),
  );

  // linear-gradient(180deg, #C58BF2 -52.86%, #B4C0FE 67.86%)
  static const caloriesLinear = LinearGradient(
    colors: [
      Color(0xFFC58BF2),
      Color(0xFFB4C0FE),
    ],
    begin: _Alignment.begin(-52.86),
    end: _Alignment.end(67.86),
    transform: _GradientRotation(180),
  );

  // linear-gradient(272.69deg, #C58BF2 -59.92%, #92A3FD 86.39%)
  static const progressBarLinear = LinearGradient(
    colors: [
      Color(0xFFC58BF2),
      Color(0xFF92A3FD),
    ],
    begin: _Alignment.begin(-59.92),
    end: _Alignment.end(86.39),
    transform: _GradientRotation(272.69),
  );

  // linear-gradient(180deg, #C58BF2 -83.11%, #B4C0FE 60.6%)
  static const waterIntakeLinear = LinearGradient(
    colors: [
      Color(0xFFC58BF2),
      Color(0xFFB4C0FE),
    ],
    begin: _Alignment.begin(-83.11),
    end: _Alignment.end(60.6),
    transform: _GradientRotation(180),
  );

  // linear-gradient(274.34deg, #CC8FED -83.99%, #9DCEFF 142.46%)
  static const logoLinear = LinearGradient(
    colors: [
      Color(0xFFCC8FED),
      Color(0xFF9DCEFF),
    ],
    begin: _Alignment.begin(-83.99),
    end: _Alignment.end(142.46),
    transform: _GradientRotation(274.34),
  );

  const FitxGradients._();
}

class _Alignment extends Alignment {
  const _Alignment.begin(double percentage) : super(-1 + percentage / 100, 0);
  const _Alignment.end(double percentage) : super(percentage / 100, 0);
}

class _GradientRotation extends GradientRotation {
  const _GradientRotation(double degrees)
      : super((degrees - 90) * math.pi / 180);
}
