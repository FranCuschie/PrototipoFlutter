import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData.dark().copyWith(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        // Screen Home
        'home': (context) => const HomeScreen(),
        // Screen visualizacion de los pokemones segunda generacion
        'listviewpage': (context) => const ListViewScreen(),
        // Screen con Widget reutilizable
        'designscreen': (context) => const DesingScreen(),
      },
    );
  }
}
