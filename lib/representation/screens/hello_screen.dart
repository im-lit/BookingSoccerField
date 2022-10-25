import 'package:bookingsoccerfeild/representation/screens/main_app.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HelloScreen extends StatefulWidget {
  const HelloScreen({super.key});
  static String routeName = '/hello_screen';

  @override
  State<HelloScreen> createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  String name = "";
  void _getName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString("NAME")!;
    });
  }
  @override
  Container build(BuildContext context) {
    _getName();
    return Container(
      child: Center(
        child: Text(
          'Hello ' + name,
          style: GoogleFonts.josefinSans(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.amber[700]),
        ),
      ),
    );
  }
}
