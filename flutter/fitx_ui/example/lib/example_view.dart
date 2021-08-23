import 'package:fitx_ui/fitx_ui.dart';
import 'package:flutter/material.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        children: [
          FitxText(
            'Danger',
            style: FitxStyles.largeTextBold,
            color: FitxColors.danger,
          ),
          FitxText(
            'Success',
            style: FitxStyles.h1Medium,
            color: FitxColors.success,
          ),
          FitxGradientText(
            'Purple Gradient',
            style: FitxStyles.largeTextBold,
            gradient: FitxGradients.purpleLinear,
          ),
          SizedBox(height: 20),
          FitxButton(gradient: FitxGradients.blueLinear),
          SizedBox(height: 20),
          FitxButton(gradient: FitxGradients.purpleLinear),
        ],
      ),
    );
  }
}
