import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../fitx_ui.dart';
import 'dashboard_option.dart';
import 'nav_bar.dart';
import 'nav_search_option.dart';

class FitxDashboard extends HookWidget {
  final FitxDashboardIcon firstIcon;
  final Widget firstContent;

  final FitxDashboardIcon secondIcon;
  final Widget secondContent;

  final FitxDashboardIcon thirdIcon;
  final Widget thirdContent;

  final FitxDashboardIcon fourthIcon;
  final Widget fourthContent;

  final List<String> searchOptions;
  final void Function(int) onSearchOptionSelected;

  const FitxDashboard({
    Key? key,
    this.firstIcon = const FitxDashboardIcon.home(),
    required this.firstContent,
    this.secondIcon = const FitxDashboardIcon.activity(),
    required this.secondContent,
    this.thirdIcon = const FitxDashboardIcon.camera(),
    required this.thirdContent,
    this.fourthIcon = const FitxDashboardIcon.profile(),
    required this.fourthContent,
    required this.searchOptions,
    required this.onSearchOptionSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final showSearchOptions = useState(false);
    final closeSearchOptions = () => showSearchOptions.value = false;
    final toggleShowSearchOptions =
        () => showSearchOptions.value = !showSearchOptions.value;

    final selectedOption = useState(DashboardOption.first);
    final selectedOptionHandler = (DashboardOption newOption) {
      closeSearchOptions();
      selectedOption.value = newOption;
    };

    final Widget selectedContent;
    switch (selectedOption.value) {
      case DashboardOption.first:
        selectedContent = firstContent;
        break;
      case DashboardOption.second:
        selectedContent = secondContent;
        break;
      case DashboardOption.third:
        selectedContent = thirdContent;
        break;
      case DashboardOption.fourth:
        selectedContent = fourthContent;
        break;
    }

    final selectSearchOption = (int index) {
      closeSearchOptions();
      onSearchOptionSelected(index);
    };

    return Material(
      type: MaterialType.transparency,
      child: Container(
        color: FitxColors.white,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: 0,
              bottom: 80,
              left: 0,
              right: 0,
              child: selectedContent,
            ),
            if (showSearchOptions.value)
              Positioned.fill(
                child: GestureDetector(
                  onTap: closeSearchOptions,
                  child: Center(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                      child: Container(
                        color: FitxColors.border.withOpacity(0.1),
                      ),
                    ),
                  ),
                ),
              ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: NavBar(
                firstIcon: firstIcon,
                secondIcon: secondIcon,
                thirdIcon: thirdIcon,
                fourthIcon: fourthIcon,
                selectedOption: selectedOption.value,
                onOptionSelected: selectedOptionHandler,
                onSearchPressed: toggleShowSearchOptions,
              ),
            ),
            if (showSearchOptions.value)
              Positioned(
                bottom: 95,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  decoration: const BoxDecoration(
                    color: FitxColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [FitxShadows.card],
                  ),
                  child: Wrap(
                    direction: Axis.vertical,
                    spacing: 12,
                    children: searchOptions
                        .mapIndexed(
                          (i, text) => NavSearchOption(
                            text,
                            onPressed: () => selectSearchOption(i),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
