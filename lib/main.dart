import 'package:bookingsoccerfeild/representation/routes.dart';
import 'package:bookingsoccerfeild/representation/screens/login-page.dart';
import 'package:bookingsoccerfeild/representation/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter_LoginPage',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundScaffoldColor,
        backgroundColor: AppColors.backgroundScaffoldColor,
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: routes,
      home: const SplashScreen(),
    );
  }
}
