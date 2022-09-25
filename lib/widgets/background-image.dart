import 'package:flutter/material.dart';

class BackgroundImages extends StatelessWidget {
  const BackgroundImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      // ignore: prefer_const_constructors
      shaderCallback: (bounds) => LinearGradient(
        colors: [Colors.black, Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/thunghiem.jpg'),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
