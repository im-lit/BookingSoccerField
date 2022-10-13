import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/text_style_constant.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 24, right: 24),
      child: SizedBox(
        height: size.height / 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Hello,',
                      style: AppStyles.h4.copyWith(
                        color: AppColors.textColor,
                      )),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Nam Long',
                      style: AppStyles.h4.copyWith(
                        color: AppColors.textColor,
                      )),
                )
              ],
            ),
            CircleAvatar(
              radius: size.height / 24,
              backgroundImage: AssetImage(AppAssets.imageAvt),
            )
          ],
        ),
      ),
    );
  }
}
