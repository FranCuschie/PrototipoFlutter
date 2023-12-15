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
                        textAlign: TextAlign.center,
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
                        border: Border.all(
                      color: Colors.white30,
                      width: 2.0,
                    )),
                    child: Text('container 1')),
                Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.width * 0.5,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.white30,
                      width: 2.0,
                    )),
                    child: Text('container 2'))
              ]),
              Row(
                children: [Text('Filtra pokemones por colores')],
              )
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
        );
  }
}
