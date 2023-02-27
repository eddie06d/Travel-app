class ActivityPlaceModel {
  String title;
  String subtitle;
  int numberStars;
  List<int> listSchedules;
  double price;
  String imageURL;

  ActivityPlaceModel({
    required this.title,
    required this.subtitle,
    required this.numberStars,
    required this.listSchedules,      
    required this.price,
    required this.imageURL}
  );
}