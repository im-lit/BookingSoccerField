import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:bookingsoccerfeild/data/models/soccer_field_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SoccerFieldProvider with ChangeNotifier {
  final List<SoccerFieldModel> _soccerfiled = [];

  List<SoccerFieldModel>? get soccerfield {
    return _soccerfiled;
  }

  Future<List<SoccerFieldModel>?> fetchAndSetSoccerField() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String jwt = preferences.getString("JWT")!;

    try {
      final response = await http.get(
        Uri.parse('https://booking-soccer.herokuapp.com/api/v1/soccer-fields/admin'),
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + jwt,
        },
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body); 
        if (data == null) return null;
        final List<SoccerFieldModel> loadedsoccerfield = [];
        data["data"].forEach((soccerfielData) {
          loadedsoccerfield.add(
            SoccerFieldModel(
              id: soccerfielData["id"],
              managerId: soccerfielData["managerId"],
              description: soccerfielData["description"],
              address: soccerfielData["address"],
              fieldName: soccerfielData["fieldName"],
              totalReviews: soccerfielData["totalReviews"],
            ),
          );
        });
        _soccerfiled.addAll(loadedsoccerfield) ;
        notifyListeners();
      }
    } catch (error) {
      print(error);
      throw error;
    }
    return _soccerfiled;
  }
    List<SoccerFieldModel>? getlistSoccer(){
      fetchAndSetSoccerField();
     return _soccerfiled;
  }
}