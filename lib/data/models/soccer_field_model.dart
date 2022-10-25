class SoccerFieldModel {
  SoccerFieldModel(
      {required this.id,
      required this.managerId,
      required this.fieldName,
      required this.address,
      required this.description,
      required this.totalReviews});

  int id;
  int managerId;
  String fieldName;
  String description;
  String address;
  int totalReviews;

  SoccerFieldModel.fromJson(Map<String, dynamic> json, this.id, this.managerId,
      this.fieldName, this.description, this.address, this.totalReviews) {
    id = json['id'];
    managerId = json['managerId'];
    fieldName = json['fieldName'];
    description = json['description'];
    address = json['address'];
    totalReviews = json['totalReviews'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['managerId'] = managerId;
    data['fieldName'] = fieldName;
    data['description'] = description;
    data['address'] = address;
    data['totalReviews'] = totalReviews;
    return data;
  }
}
