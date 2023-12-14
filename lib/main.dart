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
      initialRoute: 'desingscreen',
      routes: {
        'home': (context) => const HomeScreen(),
        'counterpage': (context) => const CounterPage(),
        'listviewpage': (context) => const ListViewScreen(),
        'desingscreen': (context) => const DesingScreen(),
      },
    );
  }
}
