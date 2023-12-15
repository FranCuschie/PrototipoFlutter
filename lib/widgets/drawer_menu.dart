import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final List<Map<String, String>> _menuItems = <Map<String, String>>[
    {'route': 'home', 'title': 'Inicio'},
    {'route': 'counterpage', 'title': 'Counter'},
    {'route': 'listviewpage', 'title': 'Listview ej1'},
    {'route': 'designscreen', 'title': 'Diseños'},
  ];

  DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
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
                        iconColor: Colors.blueGrey,
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
