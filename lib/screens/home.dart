import 'package:flutter/material.dart';
import 'package:bookingsoccerfeild/widgets/NavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
         title: Image.asset('assets/ball.ico', fit: BoxFit.cover,
         height: 70,
         width: 50,
         ),
         centerTitle: true,
         backgroundColor: Color.fromARGB(255, 46, 46, 46),
      ),
    );
  }
}