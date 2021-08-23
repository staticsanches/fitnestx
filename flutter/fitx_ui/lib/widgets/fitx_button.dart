import 'dart:developer';

import 'package:flutter/material.dart';

import '../commons/commons.dart';
import 'fitx_text.dart';

class FitxButton extends StatelessWidget {
  final LinearGradient gradient;

  const FitxButton({Key? key, required this.gradient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(99));
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        gradient: gradient,
        boxShadow: [FitxShadows.blue],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: borderRadius,
          child: Center(
            child: FitxText(
              'Button',
              style: FitxStyles.largeTextBold,
              color: FitxColors.white,
            ),
          ),
          onTap: () {
            log('Hey');
          },
        ),
      ),
    );
  }
}
