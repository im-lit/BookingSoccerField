import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:bookingsoccerfeild/data/models/userApi.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<userApi?> fetchUser(String? token) async {
  // late userApi user = new userApi(
  //     email: '', jwt: '', name: '', picture: '', role: 0, verifiedEmail: false);
  userApi user = userApi();
  final response = await http.post(
    Uri.parse(
        'https://booking-soccer.herokuapp.com/login?accessToken=${token!}'),
  );

  if (response.statusCode == 200) {
    final responseJson = jsonDecode(response.body);
    user = userApi.fromJson(responseJson);
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("TOKEN", token);
    await pref.setString("JWT", user.data!.jwt!);
    await pref.setString("NAME", user.data!.name!);
    // await pref.setString("PICTURE", user.data!.picture!);
    await pref.setString("ROLE", user.data!.role!);
    await pref.setString("EMAIL", user.data!.email!);

    return user;
  } else {
    throw Exception("you are not licensed. Try again");
  }
}
