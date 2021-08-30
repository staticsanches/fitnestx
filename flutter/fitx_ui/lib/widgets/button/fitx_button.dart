import 'package:flutter/material.dart';

import 'circle.dart';
import 'circle_with_progress.dart';
import 'primary.dart';
import 'switch.dart';

class FitxButton {
  static Widget primary(
    String text, {
    Key? key,
    void Function()? onPressed,
    IconData? leading,
    double leadingSize = 24,
    IconData? trailing,
    double trailingSize = 20,
  }) =>
      PrimaryButton(
        text,
        key: key,
        onPressed: onPressed,
        leading: leading,
        leadingSize: leadingSize,
        trailing: trailing,
        trailingSize: trailingSize,
      );

  static Widget purpleCircle(
    IconData icon, {
    Key? key,
    void Function()? onPressed,
    double iconSize = 20,
  }) =>
      CircleButton(
        icon,
        key: key,
        blue: false,
        onPressed: onPressed,
        iconSize: iconSize,
      );

  static Widget blueCircle(
    IconData icon, {
    Key? key,
    void Function()? onPressed,
    double iconSize = 20,
  }) =>
      CircleButton(
        icon,
        key: key,
        blue: true,
        onPressed: onPressed,
        iconSize: iconSize,
      );

  static Widget circleWithProgress(
    IconData icon, {
    Key? key,
    void Function()? onPressed,
    required double percentage,
  }) =>
      CircleWithProgressButton(
        icon,
        key: key,
        onPressed: onPressed,
        percentage: percentage,
      );

  static Widget animatedSwitch(
    bool value, {
    Key? key,
    ValueChanged<bool>? onChanged,
  }) =>
      AnimatedSwitch(value, key: key, onChanged: onChanged);

  const FitxButton._();
}
