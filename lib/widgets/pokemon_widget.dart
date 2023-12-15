import 'package:flutter/material.dart';

class PokemonWidget extends StatelessWidget {
  final List pokemons = <Map<String, String>>[
    {
      'image':
          "https://th.bing.com/th/id/OIP.9Gmd97xxfJ-JltpIv-x4eQHaHz?rs=1&pid=ImgDetMain",
      'pokemon': "Pikachu"
    },
    {
      'image':
          "https://th.bing.com/th/id/OIP.3HW5a0FBwKD10mWLCE4XCwHaIC?rs=1&pid=ImgDetMain",
      'pokemon': "Charmander"
    },
    {
      'image':
          "https://th.bing.com/th/id/R.52c45f7c8b8966a2a4c3c9eef8ca9994?rik=8cTjMpF1PPXk3w&riu=http%3a%2f%2f1.bp.blogspot.com%2f-ue0RUlm6K98%2fVNzsqJEcm3I%2fAAAAAAAAAPw%2fBHqUvaJgExA%2fs1600%2fbulbasaur.png&ehk=f8fLQc11XJN3fNUSBlAKz97drgL1fOI%2bEW3kZN2LzVk%3d&risl=&pid=ImgRaw&r=0",
      'pokemon': "Bulbasaur"
    }
    // Add more Pokémon data if needed
  ];

  PokemonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
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
                      placeholder: const AssetImage('assets/loading.jpg'),
                      image: NetworkImage(pokemons[index]['image']),
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    pokemons[index]['pokemon'],
                    style: const TextStyle(fontSize: 17),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
