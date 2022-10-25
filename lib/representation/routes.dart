import 'package:bookingsoccerfeild/data/models/soccer_field_model.dart';
import 'package:bookingsoccerfeild/representation/screens/checkout_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/detailbookingscreen/detail_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/login_page.dart';
import 'package:bookingsoccerfeild/representation/screens/main_app.dart';

import 'package:bookingsoccerfeild/representation/screens/soccer_field_detail_screen.dart';
import 'package:bookingsoccerfeild/representation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginPage.routeName: (context) => const LoginPage(),
  MainApp.routeName: (context) => const MainApp(),
  SoccerFieldDetailScreen.routeName: (context) => SoccerFieldDetailScreen(),
  Detail.routeName: (context) => const Detail(),
};

// route của CheckoutScreen
MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    // settings.name là name của route
    case CheckoutScreen.routeName:
      return MaterialPageRoute(builder: (context) {
        final SoccerFieldModel soccerFieldModel =
            (settings.arguments as SoccerFieldModel);
        return CheckoutScreen(soccerFieldModel: soccerFieldModel);
      });
      break;
    default:
  }
}
