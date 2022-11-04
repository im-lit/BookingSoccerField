class SoccerFieldModel {
  SoccerFieldModel(
      {required this.id,
      // required this.userName,
      required this.fieldName,
      required this.address,
      required this.description,
      required this.openHour,
      required this.closeHour,
      required this.status});

  int id;
  // String userName;
  String fieldName;
  String description;
  String address;
  String openHour;
  String closeHour;
  int status;


// this.userName,
  SoccerFieldModel.fromJson(Map<String, dynamic> json, this.id, 
      this.fieldName, this.description, this.address,this.openHour,this.closeHour, this.status) {
    id = json['id'];
    // userName = json['userName'];
    fieldName = json['fieldName'];
    description = json['description'];
    address = json['address'];
    openHour = json['openHour'];
    closeHour = json['closeHour'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    // data['userName'] = userName;
    data['fieldName'] = fieldName;
    data['description'] = description;
    data['address'] = address;
    data['openHour'] = openHour;
    data['closeHour'] = closeHour;
    data['status'] = status;
    return data;
  }
}
