import 'package:carquest_app/data/models/car.dart';
import 'package:carquest_app/presentation/pages/maps_details_page.dart';
import 'package:carquest_app/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarDetailsPage extends StatelessWidget {
  final Car car;
  const CarDetailsPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.info_outline), Text(' Détails')],
        ),
      ),
      body: Column(
        children: [
          CarCard(
            car: car,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Color(0xEB0EDD8A),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 5,
                    color: Colors.black12,
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("280 km/h",
                        style: TextStyle(
                            color: Color.fromARGB(219, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 22)),
                    const Text(
                      "Vitesse maximale",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      car.nbSeats.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color.fromARGB(219, 255, 255, 255),
                      ),
                    ),
                    const Text(
                      "Nombre de sièges",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Auto",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color.fromARGB(219, 255, 255, 255),
                      ),
                    ),
                    const Text(
                      "Boite",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 170,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 239, 239, 239),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5,
                          )
                        ]),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/user.jpg"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Jean Fabrice",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Color.fromARGB(235, 14, 221, 138),
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Color.fromARGB(235, 14, 221, 138),
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Color.fromARGB(235, 14, 221, 138),
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Color.fromARGB(235, 14, 221, 138),
                            ),
                            Icon(
                              Icons.star_half_rounded,
                              color: Color.fromARGB(235, 14, 221, 138),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MapsDetailsPage(car: car)));
                    },
                    child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/maps.png"),
                              fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 5,
                            )
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
