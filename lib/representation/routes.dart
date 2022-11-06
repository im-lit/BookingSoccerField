import 'package:bookingsoccerfeild/data/models/soccer_field_model.dart';
import 'package:bookingsoccerfeild/representation/screens/checkout_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/detailbookingscreen/booking_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/detailbookingscreen/detail_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/hello_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/home_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/login_page.dart';
import 'package:bookingsoccerfeild/representation/screens/main_app.dart';
import 'package:bookingsoccerfeild/representation/screens/profile_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/splash_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/successfully_booking_screen.dart';
import 'package:flutter/material.dart';

SoccerFieldModel? soccerFieldModel;
int date = 0;
int month = 0;
int year = 0;
String selectedTime = '';
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginPage.routeName: (context) => const LoginPage(),
  MainApp.routeName: (context) => const MainApp(),
  Detail.routeName: (context) => Detail(soccerField: soccerFieldModel),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  Booking.routeName: (context) => Booking(),
  HomeScreen.routeName: (context) => HomeScreen(),
  HelloScreen.routeName: (context) => HelloScreen(),
  CheckoutScreen.routeName: (context) => CheckoutScreen(
      date: date, month: month, year: year, selectedTime: selectedTime),
  SuccessfullyBookingScreen.routeName: (context) => SuccessfullyBookingScreen(
      date: date, month: month, year: year, selectedTime: selectedTime)
};

// route của CheckoutScreen
// MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
//   switch (settings.name) {
//     // settings.name là name của route
//     case CheckoutScreen.routeName:
//       return MaterialPageRoute(builder: (context) {
//         final SoccerFieldModel soccerFieldModel =
//             (settings.arguments as SoccerFieldModel);
//         return CheckoutScreen(soccerFieldModel: soccerFieldModel);
//       });
//       break;
//     default:
//   }
// }
