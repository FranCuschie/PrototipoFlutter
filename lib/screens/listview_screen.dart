import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/pokemon_widget.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemons Segunda Generacion'),
        backgroundColor: Colors.blueGrey,
      ),
      body: PokemonWidget(),
    );
  }
}
