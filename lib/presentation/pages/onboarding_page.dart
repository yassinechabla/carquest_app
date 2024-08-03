import 'package:carquest_app/presentation/pages/car_details_page.dart';
import 'package:carquest_app/presentation/pages/cars_list_page.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 14, 221, 138),
      body: Padding(
        padding: const EdgeInsets.only(top: 300),
        child: Column(
          children: [
            Image.asset("assets/onboarding.png"),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bienvenue sur CarQuest",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                ),
                SizedBox(height: 10),
                Text(
                  "Louez une voiture en un clin d'oeil \net commencez votre aventure dès maintenenant !",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              height: 52,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => CarsListPage()),
                      (route) => false);
                },
                child: const Text(
                  "Commencer",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
