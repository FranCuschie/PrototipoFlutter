import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/profile_appbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PokemonSegundaGeneracion extends StatefulWidget {
  const PokemonSegundaGeneracion({Key? key}) : super(key: key);

  @override
  _PokemonWidgetState createState() => _PokemonWidgetState();
}

class _PokemonWidgetState extends State<PokemonSegundaGeneracion> {
  List pokemons = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchPokemonData();
  }

  Future<void> fetchPokemonData() async {
    final url = Uri.parse(
        'http://10.0.2.2:5000/api/v1/pokemon-generation2'); // URL de la API
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          pokemons = data['pokemons'];
          isLoading = false;
        });
      } else {
        throw Exception('Error de data');
      }
    } catch (e) {
      print('Error: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pokemons'),
          actions: const [ProfileWidget()],
        ),
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : pokemons.isEmpty
                ? const Center(child: Text('Not data found'))
                : SizedBox(
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Número de columnas
                        crossAxisSpacing: 10.0, // Espaciado entre columnas
                        mainAxisSpacing: 10.0, // Espaciado entre filas
                      ),
                      itemCount: pokemons.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Container(
                            width: 150,
                            height: 150,
                            margin: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: FadeInImage(
                                    placeholder:
                                        const AssetImage('assets/loading.jpg'),
                                    image: NetworkImage(
                                        pokemons[index]['image'] ?? ''),
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  pokemons[index]['name'] ?? 'Unknown',
                                  style: const TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ));
  }
}
