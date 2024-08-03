class Car {
  final String model;
  final String? engineType;
  final String image;
  final double distance;
  final double fuelconsumption;
  final double pricePerHour;
  final int? nbSeats;
  final int? year;
  final int? topSpeed;

  Car(
      {required this.model,
      required this.image,
      this.engineType,
      required this.distance,
      required this.fuelconsumption,
      required this.pricePerHour,
      this.year,
      this.topSpeed,
      this.nbSeats});
}
