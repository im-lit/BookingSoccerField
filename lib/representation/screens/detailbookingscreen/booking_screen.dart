import 'package:bookingsoccerfeild/representation/screens/checkout_screen.dart';
import 'package:bookingsoccerfeild/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});
  static String routeName = '/booking_page';
  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  var now = DateTime.now();
  String selectedTime = "";
  Future<void> _storeData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setInt("DATE", now.day);
    await pref.setInt("MONTH", now.month);
    await pref.setInt("YEAR", now.year);
    await pref.setString("SELECTED", selectedTime);
  }

  @override
  Widget build(BuildContext context) {
    _storeData();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Booking',
          style: GoogleFonts.josefinSans(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 184, 247, 195),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 46, 46, 46),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(children: [
                        Text(
                          DateFormat.MMM().format(now),
                          style: GoogleFonts.josefinSans(color: Colors.white),
                        ),
                        Text(
                          '${now.day}',
                          style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        Text(
                          DateFormat.EEEE().format(now),
                          style: GoogleFonts.josefinSans(color: Colors.white),
                        )
                      ]),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    DatePicker.showDatePicker(context,
                        showTitleActions: true,
                        minTime: now,
                        maxTime: now.add(Duration(days: 31)),
                        onConfirm: (time) {
                      now = time;
                      setState(() => now);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: GridView.builder(
                  itemCount: TIME_SLOT.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: ((context, index) => GestureDetector(
                        onTap: () {
                          selectedTime = TIME_SLOT.elementAt(index);
                          setState(() => selectedTime);
                        },
                        child: Card(
                          color: selectedTime == TIME_SLOT.elementAt(index)
                              ? Colors.white54
                              : Colors.white,
                          child: GridTile(
                            header: selectedTime == TIME_SLOT.elementAt(index)
                                ? Icon(Icons.check)
                                : null,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(TIME_SLOT.elementAt(index)),
                                  Text('Available'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )))),
          ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => CheckoutScreen(
                        date: now.day,
                        month: now.month,
                        year: now.year,
                        selectedTime: selectedTime,
                      )))),
              child: Text('Next'))
        ],
      ),
    );
  }
}
