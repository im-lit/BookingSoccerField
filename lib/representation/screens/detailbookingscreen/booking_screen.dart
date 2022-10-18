import 'package:flutter/cupertino.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});
  static String routeName = '/booking_page';
  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("booking123"),
    );
  }
}
