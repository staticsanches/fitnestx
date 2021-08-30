import 'package:flutter/widgets.dart';

import '../../fitx_ui.dart';

class NavSearchOption extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const NavSearchOption(
    this.text, {
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          const SizedBox(
            width: 22,
            height: 22,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                color: FitxColors.grey3,
                borderRadius: BorderRadius.all(Radius.circular(3)),
              ),
            ),
          ),
          const SizedBox(width: 5),
          FitxText(
            text,
            style: FitxStyles.smallTextRegular,
            color: FitxColors.black,
          ),
        ],
      ),
    );
  }
}
