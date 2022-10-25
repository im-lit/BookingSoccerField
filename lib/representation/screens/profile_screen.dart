import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
   static String routeName = '/profile_page';
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final double profileHeight = 144;
  String token = "";
  String jwt = "";
  String name = "";
  String email = "";
  void _getJWTandToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      token = prefs.getString("TOKEN")!;
      jwt = prefs.getString("JWT")!;
      name = prefs.getString("NAME")!;
      email = prefs.getString("EMAIL")!;
    });
  }

  @override
  Widget build(BuildContext context) {
    _getJWTandToken();
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildContent() => Column(
        children: [
          SizedBox(height: 8),
          Text(
            name,
            style: GoogleFonts.josefinSans(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 8),
          Text(
            email,
            style: GoogleFonts.josefinSans(
                fontSize: 20, color: Colors.black.withOpacity(0.6)),
          )
        ],
      );

  Widget buildTop() {
    final top = 200 - profileHeight / 2;
    final bottom = profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: bottom), child: buildCoverImage()),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
            'https://qph.cf2.quoracdn.net/main-qimg-9495a9a3ed899dcad60db0f2cee75f12-lq'),
      );

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://c4.wallpaperflare.com/wallpaper/188/87/652/soccer-manchester-city-f-c-logo-wallpaper-preview.jpg',
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
      );
}
