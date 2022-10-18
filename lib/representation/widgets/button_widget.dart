import 'package:bookingsoccerfeild/core/constants/app_colors.dart';
import 'package:bookingsoccerfeild/core/constants/dismension_constan.dart';
import 'package:bookingsoccerfeild/core/constants/text_style_constant.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.title, this.ntap})
      : super(key: key);

  final String title;
  final Function()? ntap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ntap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kMediumPadding),
            gradient: Gradients.defaultGradientBackground),
        alignment: Alignment.center,
        child: Text(title, style: TextStyles.defaultStyle.bold.whiteTextColor),
      ),
    );
  }
}
