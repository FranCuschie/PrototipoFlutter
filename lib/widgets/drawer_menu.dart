import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final List<Map<String, String>> _menuItems = <Map<String, String>>[
    {'route': 'home', 'title': 'Inicio'},
    {'route': 'pokemon2', 'title': 'Pokemons 2da Generacion'},
    {'route': 'designscreen', 'title': 'Diseños'},
    //{'route': 'profile', 'title': 'Perfil'}
  ];

  DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 70),
        children: [
          ...ListTile.divideTiles(
              context: context,
              tiles: _menuItems
                  .map((item) => ListTile(
                        dense: true,
                        minLeadingWidth: 25,
                        iconColor: colors.primary,
                        title: Text(item['title']!,
                            style: const TextStyle(fontFamily: 'FuzzyBubbles')),
                        subtitle: Text(item['subtitle'] ?? '',
                            style: const TextStyle(
                                fontFamily: 'RobotoMono', fontSize: 11)),
                        leading: const Icon(Icons.arrow_right),
                        onTap: () {
                          Navigator.pop(context);
                          //Navigator.pushReplacementNamed(context, item['route']!);
                          Navigator.pushNamed(context, item['route']!);
                        },
                      ))
                  .toList())
        ],
      ),
    );
  }
}
