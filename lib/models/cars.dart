enum Transmission {
  automatic,
  mechanic,
}

class Cars {
  final String id;
  final String name;
  final String model;
  final List<String> typeid;
  final int price;
  final int mileage;
  final int year;
  final String url;
  final Transmission transmission;
  final double engine;
  final int power;
  const Cars(
      {required this.id,
      required this.name,
      required this.model,
      required this.typeid,
      required this.price,
      required this.mileage,
      required this.year,
      required this.url,
      required this.engine,
      required this.power,
      required this.transmission});
}
