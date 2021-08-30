import 'package:flutter/material.dart';

mixin BaseButtonMixin {
  BoxDecoration get decoration;
  BoxConstraints get constraints;
  BorderRadius get borderRadius;
  void Function()? get onPressed;

  Widget innerChild(BuildContext context);

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: decoration,
        constraints: constraints,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: borderRadius,
            child: Center(
              widthFactor: 1,
              child: innerChild(context),
            ),
            onTap: onPressed,
          ),
        ),
      ),
    );
  }
}
