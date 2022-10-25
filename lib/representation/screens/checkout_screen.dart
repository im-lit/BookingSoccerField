import 'package:bookingsoccerfeild/core/constants/app_assets.dart';
import 'package:bookingsoccerfeild/core/constants/app_colors.dart';
import 'package:bookingsoccerfeild/core/constants/dismension_constan.dart';
import 'package:bookingsoccerfeild/core/constants/text_style_constant.dart';
import 'package:bookingsoccerfeild/core/helpers/image_helper.dart';
import 'package:bookingsoccerfeild/data/models/soccer_field_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/dashline_widget.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key, required this.soccerFieldModel});

  final SoccerFieldModel soccerFieldModel;

  static const String routeName = '/check_out_screen';
  @override
  State<CheckoutScreen> createState() => _CheckoutScreen();
}

class _CheckoutScreen extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageHelper.loadFromAsset(AppAssets.imageSoccerFieldDetail),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: MediaQuery.of(context).size.height * .65,
              width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(30),
              //     topRight: Radius.circular(30),
              //   ),
              //   boxShadow: [
              //     BoxShadow(
              //         color: Colors.black.withOpacity(.8),
              //         offset: Offset(0, -4),
              //         blurRadius: 8),
              //   ],
              // ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ImageHelper.loadFromAsset(
                  //     widget.soccerFieldModel.soccerFieldImage),
                  Text(
                    widget.soccerFieldModel.description,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.soccerFieldModel.fieldName,
                          style: AppStyles.h4.copyWith(
                              color: AppColors.text1Color,
                              fontWeight: FontWeight.bold)),
                      Container(
                        height: MediaQuery.of(context).size.width * .1,
                        width: MediaQuery.of(context).size.width * .2,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(125, 255, 80, 50),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            '4.7km',
                            style: GoogleFonts.josefinSans(
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
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
                        widget.soccerFieldModel.address,
                        //style: TextStyle(fontWeight: FontWeight.bold),
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
                      Text('${widget.soccerFieldModel.totalReviews} reviews'),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Time Start :',
                          style: AppStyles.h4.copyWith(
                              color: AppColors.text1Color, fontSize: 20)),
                      Text(
                        '19h-20h',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Date :',
                          style: AppStyles.h4.copyWith(
                              color: AppColors.text1Color, fontSize: 20)),
                      Text(
                        '10th-Oct-2022',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  DashLineWidget(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Price :',
                          style: AppStyles.h4.copyWith(
                              color: AppColors.text1Color, fontSize: 20)),
                      Text(
                        //${widget.soccerFieldModel.price}
                        '300000 VND/h',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
