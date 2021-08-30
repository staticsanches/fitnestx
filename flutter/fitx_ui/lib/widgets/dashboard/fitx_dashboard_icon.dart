import 'package:flutter/widgets.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class FitxDashboardIcon {
  final IconData light, bold;

  const FitxDashboardIcon({
    required this.light,
    required this.bold,
  });

  const FitxDashboardIcon.home()
      : this(light: IconlyLight.home, bold: IconlyBold.home);

  const FitxDashboardIcon.activity()
      : this(light: IconlyLight.activity, bold: IconlyBold.activity);

  const FitxDashboardIcon.camera()
      : this(light: IconlyLight.camera, bold: IconlyBold.camera);

  const FitxDashboardIcon.profile()
      : this(light: IconlyLight.profile, bold: IconlyBold.profile);
}
