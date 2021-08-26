import 'package:flutter/material.dart';

import '../fitx_ui.dart';

class FitxButton extends StatelessWidget {
  final void Function()? onPressed;

  final BoxDecoration _decoration;
  final BorderRadius _borderRadius;
  final BoxConstraints _constraints;
  final WidgetBuilder _builder;

  FitxButton.primary(
    String text, {
    this.onPressed,
    IconData? leading,
    double leadingSize = 24,
    IconData? trailing,
    double trailingSize = 20,
  })  : this._decoration = _Primary.decoration(onPressed != null),
        this._borderRadius = _Primary.borderRadius,
        this._constraints = _Primary.constraints,
        this._builder = _Primary.builder(
          text,
          leading,
          leadingSize,
          trailing,
          trailingSize,
        );

  FitxButton.purpleCircle(
    IconData icon, {
    this.onPressed,
    double iconSize = 20,
  })  : this._decoration = _Circle.decoration(onPressed != null, false),
        this._borderRadius = _Circle.borderRadius,
        this._constraints = _Circle.constraints,
        this._builder = _Circle.builder(icon, iconSize);

  FitxButton.blueCircle(
    IconData icon, {
    this.onPressed,
    double iconSize = 20,
  })  : this._decoration = _Circle.decoration(onPressed != null, true),
        this._borderRadius = _Circle.borderRadius,
        this._constraints = _Circle.constraints,
        this._builder = _Circle.builder(icon, iconSize);

  FitxButton.animatedSwitch(bool on, {this.onPressed})
      : this._decoration = _AnimatedSwitch.decoration(onPressed != null, on),
        this._borderRadius = _AnimatedSwitch.borderRadius,
        this._constraints = _AnimatedSwitch.constraints,
        this._builder = _AnimatedSwitch.builder(on);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: _decoration,
        constraints: _constraints,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: _borderRadius,
            child: Center(
              widthFactor: 1,
              child: _builder(context),
            ),
            onTap: onPressed,
          ),
        ),
      ),
    );
  }
}

class _Primary {
  static const borderRadius = const BorderRadius.all(Radius.circular(99));

  static const constraints = const BoxConstraints.tightFor(height: 60);

  static BoxDecoration decoration(bool active) {
    return active
        ? const BoxDecoration(
            gradient: FitxGradients.blueLinear,
            boxShadow: [FitxShadows.blue],
            borderRadius: borderRadius,
          )
        : const BoxDecoration(
            color: FitxColors.grey3,
            boxShadow: [FitxShadows.card],
            borderRadius: borderRadius,
          );
  }

  static WidgetBuilder builder(
    String text,
    IconData? leading,
    double leadingSize,
    IconData? trailing,
    double trailingSize,
  ) =>
      (_) => Row(
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
          );
}

class _Circle {
  static const borderRadius = const BorderRadius.all(Radius.circular(30));

  static const constraints = const BoxConstraints.tightFor(
    width: 60,
    height: 60,
  );

  static BoxDecoration decoration(bool active, bool blue) {
    if (!active) {
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

  static WidgetBuilder builder(IconData icon, double size) => (_) => Icon(
        icon,
        color: FitxColors.white,
        size: size,
      );
}

class _AnimatedSwitch {
  static const borderRadius = const BorderRadius.all(Radius.circular(50));

  static const constraints = const BoxConstraints.tightFor(
    width: 44,
    height: 24,
  );

  static BoxDecoration decoration(bool active, bool on) {
    return active && on
        ? const BoxDecoration(
            gradient: FitxGradients.purpleLinear,
            borderRadius: borderRadius,
          )
        : const BoxDecoration(
            color: FitxColors.grey3,
            borderRadius: borderRadius,
          );
  }

  static WidgetBuilder builder(bool on) => (_) => AnimatedAlign(
        alignment: on ? Alignment.centerRight : Alignment.centerLeft,
        duration: Duration(milliseconds: 300),
        child: Container(
          width: 14,
          height: 14,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: FitxColors.white,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 5),
        ),
      );
}
