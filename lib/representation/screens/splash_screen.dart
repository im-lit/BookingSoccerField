import 'package:bookingsoccerfeild/core/helpers/asset_helper.dart';
import 'package:bookingsoccerfeild/core/helpers/image_helper.dart';
import 'package:bookingsoccerfeild/representation/screens/login-page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String routeName = '/splash_screen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirectLoginScreen();
  }

  void redirectLoginScreen() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushNamed(LoginPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          // fill hết ảnh này cho khoảng không
          child: ImageHelper.loadFromAsset(AssetHelper.imageBackGroundSplash,
              fit: BoxFit.fitWidth),
        ),
        Positioned.fill(
            child: ImageHelper.loadFromAsset(
          AssetHelper.imageCircleSplash,
        ))
      ],
    );
  }
}
