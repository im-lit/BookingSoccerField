import 'package:bookingsoccerfeild/core/constants/app_assets.dart';
import 'package:bookingsoccerfeild/core/constants/app_colors.dart';
import 'package:bookingsoccerfeild/core/constants/dismension_constan.dart';
import 'package:bookingsoccerfeild/core/helpers/image_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarContainerWidget extends StatelessWidget {
  const AppBarContainerWidget({
    super.key,
    required this.child,
    this.title,
    this.implementLeading = false,
    this.titleString,
  });

  final Widget child;
  final Widget? title;
  final String? titleString;
  final bool implementLeading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 186,
            child: AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              elevation: 0,
              toolbarHeight: 90,
              backgroundColor: Colors.white,
              title: title ??
                  Row(
                    children: [
                      if (implementLeading)
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(kDefaultPadding),
                              ),
                              color: Colors.white.withOpacity(.8)),
                          padding: EdgeInsets.all(kItemPadding),
                          child: Icon(
                            FontAwesomeIcons.arrowLeft,
                            color: Colors.black,
                            size: kDefaultIconSize,
                          ),
                        ),
                      Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                titleString ?? '',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              flexibleSpace: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: Gradients.defaultGradientBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          35,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: ImageHelper.loadFromAsset(AppAssets.imageOval1)),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: ImageHelper.loadFromAsset(AppAssets.imageOval2)),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 156),
            padding: EdgeInsets.symmetric(horizontal: kMediumPadding),
            child: child,
          ),
        ],
      ),
    );
  }
}
