import 'package:flutter/material.dart';

import './screens/mainscreen.dart';
import './screens/carsscreen.dart';
import './screens/caritemscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TurboAz',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black12),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
        ),
      ),
      routes: {
        '/': (context) => const MainScreen(),
        CarsScreen.routeName: (context) => const CarsScreen(),
        CarItemScreen.routeName: (context) => const CarItemScreen(),
      },
    );
  }
}
