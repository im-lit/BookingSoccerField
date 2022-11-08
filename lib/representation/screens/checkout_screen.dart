import 'package:bookingsoccerfeild/core/constants/app_assets.dart';
import 'package:bookingsoccerfeild/core/constants/app_colors.dart';
import 'package:bookingsoccerfeild/core/constants/dismension_constan.dart';
import 'package:bookingsoccerfeild/core/constants/text_style_constant.dart';
import 'package:bookingsoccerfeild/core/helpers/image_helper.dart';
import 'package:bookingsoccerfeild/representation/screens/successfully_booking_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/button_widget.dart';
import '../widgets/dashline_widget.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen(
      {super.key,
      required this.date,
      required this.month,
      required this.year,
      required this.selectedTime});
  final int date;
  final int month;
  final int year;
  final String selectedTime;

  static const String routeName = '/check_out_screen';
  @override
  State<CheckoutScreen> createState() => _CheckoutScreen();
}

class _CheckoutScreen extends State<CheckoutScreen> {
  int id = 0;
  String address = "";
  String description = "";
  String fieldName = "";
  var now = DateTime.now();
  void _getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      id = prefs.getInt("ID")!;
      address = prefs.getString("ADDRESS")!;
      description = prefs.getString("DESCRIPTION")!;
      fieldName = prefs.getString("FIELDNAME")!;
    });
  }


  Widget _buildItemPayment(
      Widget icon, Color color, Function() onTap, String title) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: kMinPadding),
            decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                borderRadius: BorderRadius.circular(kItemPadding)),
            child: icon,
          ),
          SizedBox(
            height: kItemPadding,
          ),
          Text(title)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _getData();
    int date = widget.date;
    int month = widget.month;
    int year = widget.year;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(bottom: kMediumPadding),
        child: Column(
          children: [
            //Image
            Container(
              width: double.infinity,
              child:
                  ImageHelper.loadFromAsset(AppAssets.imageSoccerFieldDetail),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //TypeField
                  Text(
                    description,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  //NameFiled
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(fieldName,
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
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  //Location
                  Row(
                    children: [
                      ImageHelper.loadFromAsset(AppAssets.icLocation),
                      SizedBox(
                        width: kMinPadding,
                      ),
                      Expanded(
                        child: Text(
                          address,
                          //style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  //Views
                  Row(
                    children: [
                      ImageHelper.loadFromAsset(AppAssets.icStar),
                      SizedBox(
                        width: kMinPadding,
                      ),
                      Text('$id reviews'),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  //TimeStart
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Time Start :',
                          style: AppStyles.h4.copyWith(
                              color: AppColors.text1Color, fontSize: 20)),
                      Text(
                        widget.selectedTime,
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),

                  //Date
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Date :',
                          style: AppStyles.h4.copyWith(
                              color: AppColors.text1Color, fontSize: 20)),
                      Text(
                        '$date' + '/' + '$month' + '/' + '$year',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  DashLineWidget(),

                  //Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Price :',
                          style: AppStyles.h4.copyWith(
                              color: AppColors.text1Color, fontSize: 20)),
                      Text(
                        //${widget.soccerFieldModel.price}
                        '300000 VND/H',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),

            //Payment method
            Column(
              children: [
                SizedBox(
                  height: kDefaultPadding,
                ),
                Text('Payment method',
                    style: AppStyles.h4.copyWith(
                        color: AppColors.text1Color,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Divider(color: Colors.black),
                //PaymentMethod
                Padding(
                  padding: const EdgeInsets.only(
                    top: 1,
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: _buildItemPayment(
                          ImageHelper.loadFromAsset(AppAssets.imgageMomo,
                              height: 60),
                          Color.fromARGB(255, 243, 242, 242),
                          () {},
                          '',
                        ),
                      ),
                      SizedBox(
                        width: kDefaultPadding,
                      ),
                      Expanded(
                        child: _buildItemPayment(
                          ImageHelper.loadFromAsset(AppAssets.imageViettelPay,
                              height: 60),
                          Color.fromARGB(255, 243, 242, 242),
                          () {},
                          '',
                        ),
                      ),
                      SizedBox(
                        width: kDefaultPadding,
                      ),
                      Expanded(
                        child: _buildItemPayment(
                          ImageHelper.loadFromAsset(AppAssets.imagePavpal,
                              height: 60),
                          Color.fromARGB(255, 243, 242, 242),
                          () {},
                          '',
                        ),
                      ),
                    ],
                  ),
                ),
                Text('*Click Book when finishing the transacion'),
                SizedBox(
                  height: 4 ,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonWidget(
                        title: '        Book        ',
                        ntap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => SuccessfullyBookingScreen(
                                  ))));
                        }),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
