import 'package:bookingsoccerfeild/core/constants/app_assets.dart';
import 'package:bookingsoccerfeild/core/helpers/image_helper.dart';
import 'package:flutter/material.dart';

class SoccerFieldDetailScreen extends StatefulWidget {
  const SoccerFieldDetailScreen({super.key});

  static const String routeName = '/soccer_field_detail_screen';
  @override
  State<SoccerFieldDetailScreen> createState() => _SoccerFieldDetailScreen();
}

class _SoccerFieldDetailScreen extends State<SoccerFieldDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: ImageHelper.loadFromAsset(AppAssets.imageSoccerField1,
                  fit: BoxFit.fill))
        ],
      ),
    );
  }
}
