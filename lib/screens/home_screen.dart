import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
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
            color: Colors.blueGrey,
            padding: EdgeInsets.all(16),
            child: const Text(
                'App hecha por Francisco Cuschie y Florencia Cardenalli',
                style: TextStyle(fontSize: 24)),
          ),
        ]));
  }
}
