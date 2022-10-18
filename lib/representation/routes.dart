import 'package:bookingsoccerfeild/representation/screens/detailbookingscreen/booking_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/detailbookingscreen/detail_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/login_page.dart';
import 'package:bookingsoccerfeild/representation/screens/main_app.dart';
import 'package:bookingsoccerfeild/representation/screens/profile_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginPage.routeName: (context) => const LoginPage(),
  MainApp.routeName: (context) => const MainApp(),
  Detail.routeName: (context) => const Detail(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  Booking.routeName: (context) => Booking(),
};
