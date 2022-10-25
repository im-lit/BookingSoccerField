class SoccerFieldModel {
  SoccerFieldModel(
      {required this.soccerFieldImage,
      required this.soccerFieldName,
      required this.star,
      required this.price,
      required this.soccerFieldType,
      required this.numberOfReview,
      required this.soccerFieldLocation});

  final String soccerFieldImage;
  final String soccerFieldName;
  final double star;
  final int price;
  final String soccerFieldType;
  final int numberOfReview;
  final String soccerFieldLocation;
}
