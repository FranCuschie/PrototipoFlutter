import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Maria Fernanda Garcia'),
            subtitle: Text('maria@gmail.com'),
          ),
          ListTile(
            title: Text('Maria Fernanda Garcia'),
            subtitle: Text('maria@gmail.com'),
          ),
          ListTile(
            title: Text('Maria Fernanda Garcia'),
            subtitle: Text('maria@gmail.com'),
          ),
          ListTile(
            title: Text('Maria Fernanda Garcia'),
            subtitle: Text('maria@gmail.com'),
          ),
          ListTile(
            title: Text('Maria Fernanda Garcia'),
            subtitle: Text('maria@gmail.com'),
          ),
          ListTile(
            title: Text('Maria Fernanda Garcia'),
            subtitle: Text('maria@gmail.com'),
          ),
          ListTile(
            title: Text('Maria Fernanda Garcia'),
            subtitle: Text('maria@gmail.com'),
          ),
          ListTile(
            title: Text('Maria Fernanda Garcia'),
            subtitle: Text('maria@gmail.com'),
          ),
          ListTile(
            title: Text('Maria Fernanda Garcia'),
            subtitle: Text('maria@gmail.com'),
          ),
          ListTile(
            title: Text('Maria Fernanda Garcia'),
            subtitle: Text('maria@gmail.com'),
          ),
          ListTile(
            title: Text('Maria Fernanda Garcia'),
            subtitle: Text('maria@gmail.com'),
          ),
          ListTile(
            title: Text('Maria Fernanda Garcia'),
            subtitle: Text('maria@gmail.com'),
          ),
          ListTile(
            title: Text('Maria Fernanda Garcia'),
            subtitle: Text('maria@gmail.com'),
          ),
        ],
      ),
    );
  }
}
