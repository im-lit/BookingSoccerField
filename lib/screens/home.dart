import 'package:bookingsoccerfeild/services/firebase_services.dart';
import 'package:flutter/material.dart';

import 'login-page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
        onPressed: () async{
          await FirebaseServices().signOut();
          Navigator.push(context,
           MaterialPageRoute(builder: (context) => LoginPage()));
        },
      child: Text("Logout"),)),
    );
  }
}