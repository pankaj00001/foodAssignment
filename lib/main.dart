import 'package:assignment/view/food/food_screen.dart';
import 'package:flutter/material.dart';

import 'dependency_injection/locator.dart';

ServiceLocator dependencyInjector = ServiceLocator();

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  dependencyInjector.servicesLocator(); // Initializing service locator for dependency injection


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FoodScreen(),
    );
  }
}
