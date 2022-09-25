// ignore: file_names


import 'package:bookingsoccerfeild/palatte.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImages(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(children: [
              Image.asset(
                'assets/ball.png',
                height: 240,
              ),
              const SizedBox(
                height: 100,
                child: Center(
                  child: Text(
                    'Booking SoccerField',
                    style: kCenter,
                  ),
                ),
              ),
              Column(children: [
                const SizedBox(
                  height: 230,
                ),
                Center(
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(backgroundColor:
                                MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.black26;
                              }
                              return Colors.white;
                            })),
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
