import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Main Page'),
      ),
      drawer: DrawerMenu(),
      body: const Center(child: Text('Widget')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hice click en el boton');
        },
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
