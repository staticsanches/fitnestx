import 'package:flutter/widgets.dart';

import '../../fitx_ui.dart';
import 'dashboard_option.dart';
import 'nav_option.dart';

class NavBar extends StatelessWidget {
  final FitxDashboardIcon firstIcon;
  final FitxDashboardIcon secondIcon;
  final FitxDashboardIcon thirdIcon;
  final FitxDashboardIcon fourthIcon;

  final DashboardOption selectedOption;
  final void Function(DashboardOption) onOptionSelected;

  final void Function() onSearchPressed;

  const NavBar({
    Key? key,
    required this.firstIcon,
    required this.secondIcon,
    required this.thirdIcon,
    required this.fourthIcon,
    required this.selectedOption,
    required this.onOptionSelected,
    required this.onSearchPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final availableWidth = size.width / 2 - // half of the screen
        30 - // half of the search button
        30 - // margin of the first button
        24 - // width of the first button
        12; // half of the width of the second button
    final middleOffset = availableWidth / 2 + 30 + 24;

    return Container(
      width: double.infinity,
      height: 90,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: 80,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: FitxColors.white,
                boxShadow: [FitxShadows.card],
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            child: FitxButton.blueCircle(
              IconlyLight.search,
              onPressed: onSearchPressed,
            ),
          ),
          Positioned(
            left: 30,
            top: 28,
            child: NavOption(
              active: selectedOption == DashboardOption.first,
              icon: firstIcon,
              onPressed: () => onOptionSelected(DashboardOption.first),
            ),
          ),
          Positioned(
            left: middleOffset,
            top: 28,
            child: NavOption(
              active: selectedOption == DashboardOption.second,
              icon: secondIcon,
              onPressed: () => onOptionSelected(DashboardOption.second),
            ),
          ),
          Positioned(
            right: middleOffset,
            top: 28,
            child: NavOption(
              active: selectedOption == DashboardOption.third,
              icon: thirdIcon,
              onPressed: () => onOptionSelected(DashboardOption.third),
            ),
          ),
          Positioned(
            right: 30,
            top: 28,
            child: NavOption(
              active: selectedOption == DashboardOption.fourth,
              icon: fourthIcon,
              onPressed: () => onOptionSelected(DashboardOption.fourth),
            ),
          ),
        ],
      ),
    );
  }
}
