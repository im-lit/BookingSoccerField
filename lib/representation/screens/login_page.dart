// ignore: file_names
import 'package:bookingsoccerfeild/data/models/userApi.dart';
import 'package:bookingsoccerfeild/network/network_request.dart';
import 'package:bookingsoccerfeild/palatte.dart';
import 'package:bookingsoccerfeild/services/firebase_services.dart';
import 'package:flutter/material.dart';
import '../../../widgets/background-image.dart';
import '../../widgets/widgets.dart';
import 'main_app.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static String routeName = '/login_page';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

String jwt = "";
String getJWT(String value) => jwt = value;

class _LoginPageState extends State<LoginPage> {
  String? check;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImages(),
        Align(
          alignment: const Alignment(0.4, -1),
          child: Image.asset(
            'assets/ball.png',
            height: 240,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(children: [
              const SizedBox(
                height: 500,
                child: Align(
                  alignment: Alignment(0.0, 0.3),
                  child: Text(
                    'Booking SoccerField',
                    style: kCenter,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
                child: Align(
                  alignment: Alignment(-0.78, -125),
                  child: Text(
                    'Online',
                    style: kOnline,
                  ),
                ),
              ),
              Column(children: [
                const SizedBox(
                  height: 40,
                ),
                Center(
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        child: ElevatedButton(
                            onPressed: () async {
                              check =
                                  await FirebaseServices().signInWithGoogle();
                              print(check);
                              if (check != null) {
                                userApi? user = await fetchUser(check);
                                if (user!.data!.jwt == "") {
                                  Navigator.of(context)
                                      .pushNamed(LoginPage.routeName);
                                  FirebaseServices().signOut();
                                } else {
                                  Navigator.of(context)
                                      .pushNamed(MainApp.routeName);
                                }
                              }
                              // ignore: use_build_context_synchronously
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith((states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.black26;
                                }
                                return Colors.white;
                              }),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              )),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Image.asset(
                                            'assets/gg.jpg',
                                            width: 30,
                                            height: 30,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            'Login with Gmail',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          )
                                        ])))))),
              ])
            ]),
          ),
        ),
      ],
    );
  }
}
