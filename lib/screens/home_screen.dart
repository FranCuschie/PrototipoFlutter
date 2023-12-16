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
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.width * 0.2,
                      child: const Center(
                          child: Text(
                        'Poke App',
                        style: TextStyle(fontSize: 32),
                      )))
                ],
              ),
              Row(children: <Widget>[
                Container(
                    // un cuadrado de la mitad de la pantalla
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.width * 0.5,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 100, 101, 124),
                        border: Border.all(
                          color: Colors.white30,
                          width: 2.0,
                        )),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Ver todos', style: TextStyle(fontSize: 24)),
                      ],
                    )),
                Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.width * 0.5,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 132, 94, 101),
                        border: Border.all(
                          color: Colors.white30,
                          width: 2.0,
                        )),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Filtrar por numero de pokedex',
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ))
              ]),
              Row(children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * 0.5,
                    color: Color.fromARGB(255, 131, 135, 103),
                    child: Center(
                      child: Text('Filtra pokemones por colores',
                          style: TextStyle(fontSize: 24)),
                    )),
              ])

              // floatingActionButton: FloatingActionButton(
              //   onPressed: () {
              //     print('Hice click en el boton');
              //   },
              //   child: const Icon(
              //     Icons.add,
              //     size: 30,
              //   ),
              // ),
              // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            ]));
  }
}
