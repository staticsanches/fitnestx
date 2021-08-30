import 'package:fitx_ui/fitx_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ExampleView extends HookWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FitxDashboard(
      firstContent: const Center(
        child: FitxGradientText.blue(
          'First',
          style: FitxStyles.h1Bold,
        ),
      ),
      secondContent: const Center(
        child: FitxGradientText.blue(
          'Second',
          style: FitxStyles.h1Bold,
        ),
      ),
      thirdContent: const Center(
        child: FitxGradientText.blue(
          'Third',
          style: FitxStyles.h1Bold,
        ),
      ),
      fourthContent: const Center(
        child: FitxGradientText.blue(
          'Fourth',
          style: FitxStyles.h1Bold,
        ),
      ),
      searchOptions: const ['First Search Option', 'Second Search Option'],
      onSearchOptionSelected: (option) => print('Selected $option'),
    );
  }
}
