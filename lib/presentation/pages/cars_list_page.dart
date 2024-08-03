import 'package:carquest_app/data/models/car.dart';
import 'package:carquest_app/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarsListPage extends StatelessWidget {
  CarsListPage({super.key});
  final List<Car> cars = [
    Car(
        model: 'Gle 63 S Coupe',
        image: 'assets/Gle63.png',
        distance: 400,
        year: 2018,
        fuelconsumption: 7.6,
        nbSeats: 4,
        topSpeed: 280,
        engineType: 'V8',
        pricePerHour: 11),
    Car(
        model: 'VW Touareg',
        image: 'assets/touareg.png',
        distance: 400,
        year: 2012,
        fuelconsumption: 7.2,
        nbSeats: 4,
        topSpeed: 220,
        engineType: 'V6',
        pricePerHour: 11),
    Car(
        model: 'Range Rover Sport',
        image: 'assets/onboarding.png',
        distance: 400,
        year: 2018,
        fuelconsumption: 7.6,
        nbSeats: 4,
        topSpeed: 240,
        engineType: 'V8',
        pricePerHour: 11),
    Car(
        model: 'Range Rover Sport',
        image: 'assets/onboarding.png',
        distance: 400,
        year: 2018,
        fuelconsumption: 7.6,
        nbSeats: 4,
        topSpeed: 220,
        engineType: 'V8',
        pricePerHour: 11),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Choisissez votre voiture",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
      ),
    );
  }
}
