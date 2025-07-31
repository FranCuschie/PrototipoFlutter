import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: colors.primary,
          title: const Text('Pokedex'),
        ),
        drawer: DrawerMenu(),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Expanded(
              child: Center(
                  child: Text(
            'Poke App',
            style: TextStyle(fontSize: 40),
          ))),
          Container(
            color: colors.primary,
            padding: const EdgeInsets.all(16),
            child: const Text(
                'App hecha por Francisco Cuschie y Florencia Cardenalli',
                style: TextStyle(fontSize: 24)),
          ),
        ]));
  }
}
