import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/text_style_constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 24),
      child: SizedBox(
        height: size.height / 15,
        child: Row(
          children: [
            Expanded(
                child: Container(
              height: size.height / 15,
              decoration: BoxDecoration(
                  color: AppColors.greySearch,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2, 3),
                        blurRadius: 3)
                  ]),
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 24, right: 12),
                  child: FaIcon(FontAwesomeIcons.search),
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search soccer field',
                      hintStyle:
                          AppStyles.h5.copyWith(color: AppColors.textColor),
                      border: InputBorder.none),
                ))
              ]),
            )),
          ],
        ),
      ),
    );
  }
}
