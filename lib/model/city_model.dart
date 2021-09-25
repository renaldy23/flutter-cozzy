class CityModel {
  int id;
  String name;
  String imgUrl;
  bool? isFavorite;
  CityModel({
    required this.id,
    required this.name,
    required this.imgUrl,
    this.isFavorite,
  });
}
