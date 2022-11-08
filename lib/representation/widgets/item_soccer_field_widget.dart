import 'package:bookingsoccerfeild/core/constants/app_assets.dart';
import 'package:bookingsoccerfeild/core/constants/app_colors.dart';
import 'package:bookingsoccerfeild/core/constants/dismension_constan.dart';
import 'package:bookingsoccerfeild/core/helpers/image_helper.dart';
import 'package:bookingsoccerfeild/data/models/soccer_field_model.dart';
import 'package:bookingsoccerfeild/representation/screens/detailbookingscreen/detail_screen.dart';
import 'package:bookingsoccerfeild/representation/widgets/button_widget.dart';
import 'package:bookingsoccerfeild/representation/widgets/dashline_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            child: Image.asset('assets/sanbong.png'),
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
                      soccerFieldModel.fieldName,
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
                    Text(
                      '4.5 -',
                      style: TextStyle(color: AppColors.subTitleColor),
                    ),
                    SizedBox(
                      width: kMinPadding,
                    ),
                    Text(
                      '(3600) reviews',
                      style: TextStyle(color: AppColors.subTitleColor),
                    )
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Text(
                  soccerFieldModel.description,
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
                    Expanded(
                      child: Text(
                        soccerFieldModel.address,
                        style: TextStyle(fontSize: 12),
                      ),
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
                            '300',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('k/hour',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Detail(soccerField: soccerFieldModel)));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                            (states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.white;
                              }
                              return Color.fromARGB(255, 46, 46, 46);
                            },
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                        child: Text(
                          'Book',
                          style: GoogleFonts.josefinSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
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
