import 'package:flutter/cupertino.dart';

class userApi with ChangeNotifier {
  Data? data;

  userApi({this.data});

  userApi.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? name;
  String? email;
  String? role;
  String? givenName;
  String? picture;
  int? exp;
  String? jwt;

  Data({
    this.name,
    this.email,
    this.role,
    this.givenName,
    this.exp,
    this.jwt,
  });

  Data.fromJson(Map<String, dynamic> json) {
    name = json['userName'];
    email = json['email'];
    role = json['role'];
    givenName = json['given_name'];
    picture = json['picture'];
    exp = json['exp'];
    jwt = json['jwtToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = name;
    data['email'] = email;
    data['role'] = role;
    data['given_name'] = givenName;
    data['picture'] = picture;
    data['exp'] = exp;
    data['jwtToken'] = jwt;

    return data;
  }
}
