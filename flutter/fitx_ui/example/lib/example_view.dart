import 'package:fitx_ui/fitx_ui.dart';
import 'package:flutter/material.dart';

class ExampleView extends StatefulWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  _ExampleViewState createState() => _ExampleViewState();
}

class _ExampleViewState extends State<ExampleView> {
  bool _on = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
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
          FitxButton.primary(
            "Login",
            onPressed: () {},
            leading: IconlyBold.login,
          ),
          SizedBox(height: 20),
          FitxButton.primary(
            "Next",
            onPressed: () {},
            trailing: IconlyLight.arrowRight2,
          ),
          SizedBox(height: 20),
          FitxButton.primary("Button"),
          SizedBox(height: 20),
          FitxButton.purpleCircle(IconlyLight.camera),
          SizedBox(height: 20),
          FitxButton.purpleCircle(
            IconlyLight.camera,
            onPressed: () {},
          ),
          SizedBox(height: 20),
          FitxButton.blueCircle(
            Icons.add,
            onPressed: () {},
          ),
          SizedBox(height: 20),
          FitxButton.animatedSwitch(
            _on,
            onPressed: () {
              setState(() {
                _on = !_on;
              });
            },
          ),
        ],
      ),
    );
  }
}
