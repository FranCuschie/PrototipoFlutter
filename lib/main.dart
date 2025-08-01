import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/screens/pokemon2da_screen.dart';
import 'package:flutter_application_1/themes/default_theme.dart';
import 'package:flutter_application_1/themes/theme_notifier.dart';

import 'screens/screens.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      title: 'Demo',
      theme: themeNotifier.theme,
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        // Screen Home
        'home': (context) => const HomeScreen(),
        // Screen visualizacion de los pokemones segunda generacion
        'pokemon2': (context) => const PokemonSegundaGeneracion(),
        // Screen con Widget reutilizable
        'designscreen': (context) => const DesingScreen(),
        // Screen Profile
        //'profile': (context) => const Profile(),
      },
    );
  }
}
