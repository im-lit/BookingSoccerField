import 'package:bookingsoccerfeild/core/constants/app_assets.dart';
import 'package:bookingsoccerfeild/core/constants/app_colors.dart';
import 'package:bookingsoccerfeild/core/constants/dismension_constan.dart';
import 'package:bookingsoccerfeild/core/constants/text_style_constant.dart';
import 'package:bookingsoccerfeild/core/helpers/image_helper.dart';
import 'package:bookingsoccerfeild/data/models/soccer_field_model.dart';
import 'package:bookingsoccerfeild/representation/screens/checkout_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/detailbookingscreen/detail_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/login_page.dart';
import 'package:bookingsoccerfeild/representation/screens/profile_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/soccer_field_detail_screen.dart';
import 'package:bookingsoccerfeild/representation/widgets/button_widget.dart';
import 'package:bookingsoccerfeild/representation/widgets/dashline_widget.dart';
import 'package:flutter/material.dart';

class ItemSoccerFieldWidget extends StatelessWidget {
  const ItemSoccerFieldWidget({super.key, required this.soccerFieldModel});

  final SoccerFieldModel soccerFieldModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultPadding),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: kMediumPadding),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            //margin: EdgeInsets.only(right: kDefaultPadding),
            child: ImageHelper.loadFromAsset(
              soccerFieldModel.soccerFieldImage,
              radius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      soccerFieldModel.soccerFieldName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  children: [
                    ImageHelper.loadFromAsset(AppAssets.icStar),
                    SizedBox(
                      width: kMinPadding,
                    ),
                    Text(soccerFieldModel.star.toString()),
                    Text(
                      ' - ${soccerFieldModel.numberOfReview} reviews',
                      style: TextStyle(color: AppColors.subTitleColor),
                    )
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Text(
                  soccerFieldModel.soccerFieldType,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  children: [
                    ImageHelper.loadFromAsset(AppAssets.icLocation),
                    SizedBox(
                      width: kMinPadding,
                    ),
                    Text(
                      soccerFieldModel.soccerFieldLocation,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                DashLineWidget(),
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Text(
                            '${soccerFieldModel.price}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('k/hour',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: ButtonWidget(
                        title: 'Book',
                        ntap: () {
                          Navigator.of(context).pushNamed(
                              CheckoutScreen.routeName,
                              arguments: soccerFieldModel);
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
