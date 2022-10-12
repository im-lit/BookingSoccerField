import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:google_fonts/google_fonts.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailBookingState();
}

class _DetailBookingState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/sanbong.png'), fit: BoxFit.cover),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * .57,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.8),
                      offset: Offset(0, -4),
                      blurRadius: 8),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Goden Star Field',
                            style: GoogleFonts.josefinSans(
                                fontSize: 21,
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width * .1,
                          width: MediaQuery.of(context).size.width * .2,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(125, 255, 80, 50),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              '4.7km',
                              style: GoogleFonts.josefinSans(
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 1,
                      right: 20,
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        Text(
                          '7 Man Field',
                          style: GoogleFonts.josefinSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 1,
                      right: 20,
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '12 Sky9 Apartment, D9, HCM',
                            style: GoogleFonts.josefinSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                        Text(
                          '550.000/hour',
                          style: GoogleFonts.josefinSans(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Center(
                      child: RatingBar.builder(
                        itemSize: 30,
                        minRating: 1,
                        maxRating: 5,
                        initialRating: 4.5,
                        allowHalfRating: true,
                        onRatingUpdate: (double value) {},
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      right: 20,
                      left: 20,
                    ),
                    child: Text(
                      'Owner',
                      style: GoogleFonts.josefinSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 20,
                      left: 25,
                    ),
                    child: Text(
                      '•HackerLord',
                      style: GoogleFonts.josefinSans(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      right: 20,
                      left: 20,
                    ),
                    child: Text(
                      'Feature',
                      style: GoogleFonts.josefinSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 20,
                      left: 25,
                    ),
                    child: Text(
                      '•A favourite field by most of celebrities, artificial grass made by brazil people. The ball is made by the Portuguese. The goal is made of iron.',
                      style: GoogleFonts.josefinSans(
                          fontSize: 19,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                            (states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.white;
                              }
                              return Color.fromARGB(200, 0, 0, 0);
                            },
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                        child: Text(
                          'Choose',
                          style: GoogleFonts.josefinSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
