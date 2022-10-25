import 'package:bookingsoccerfeild/data/models/soccer_field_model.dart';
import 'package:bookingsoccerfeild/network/network_soccerfield.dart';
import 'package:bookingsoccerfeild/representation/widgets/item_soccer_field_widget.dart';
import 'package:flutter/material.dart';
import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/text_style_constant.dart';

import 'components/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String routeName = '/home_screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<SoccerFieldModel>? listSoccerField;
  @override
  void initState() {
    listSoccerField = SoccerFieldProvider().getlistSoccer();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              //HomeHeader(size: size),
              SearchBar(size: size),
              Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/i_player.png',
                        height: 197,
                        width: 135,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 30),
                          //alignment: Alignment.bottomRight,
                          //color: AppColors.blackGrey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Online Booking',
                                style: AppStyles.h4.copyWith(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              ),
                              Text('SoccerField',
                                  style: AppStyles.h4.copyWith(
                                      color: AppColors.textColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    //color: AppColors.blackGrey,
                    //alignment: Alignment.topLeft,
                    child: Text(
                      'Popular Field',
                      style: AppStyles.h4.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: AppColors.red,
                      ),
                    ),
                  ),
                  Image.asset(AppAssets.imageFire)
                ],
              ),
              SingleChildScrollView(
                  child: Column(
                children: listSoccerField!
                    .map((e) => ItemSoccerFieldWidget(soccerFieldModel: e))
                    .toList(),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
