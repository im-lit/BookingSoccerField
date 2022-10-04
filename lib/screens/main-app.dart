import 'package:bookingsoccerfeild/screens/home_screen.dart';
import 'package:bookingsoccerfeild/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:bookingsoccerfeild/widgets/NavBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Image.asset(
          'assets/ball.ico',
          fit: BoxFit.cover,
          height: 70,
          width: 50,
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 46, 46, 46),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          Container(
            color: Colors.amber.shade100,
          ),
        ProfileScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedItemColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 46, 46, 46),
        items: const [
          BottomNavigationBarItem(
            label: (''),
            icon: Icon(
              FontAwesomeIcons.house,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: (''),
            icon: Icon(
              (Icons.notifications),
            ),
          ),
          BottomNavigationBarItem(
            label: (''),
            icon: Icon(
              (Icons.account_circle_outlined),
            ),
          )
        ],
      ),
    );
  }
}
