import 'package:carquest_app/firebase_options.dart';
import 'package:carquest_app/presentation/pages/car_details_page.dart';
import 'package:carquest_app/presentation/pages/cars_list_page.dart';
import 'package:carquest_app/presentation/pages/maps_details_page.dart';
import 'package:carquest_app/presentation/pages/onboarding_page.dart';
import 'package:carquest_app/presentation/widgets/car_card.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: OnboardingPage());
  }
}
