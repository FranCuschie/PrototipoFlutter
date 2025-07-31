import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/profile_appbar.dart';

class DesingScreen extends StatelessWidget {
  const DesingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.primary,
        title: const Text('Vista Unica'),
        actions: const [ProfileWidget()],
      ),
      body: ListView(
        children: [
          Container(
            color: colors.primary,
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.all(10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '#133',
                  style: TextStyle(fontSize: 28),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Eevee',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          ),
          const FadeInImage(
            placeholder: AssetImage('assets/loading.jpg'),
            width: 30,
            image: NetworkImage(
                'https://static.wikia.nocookie.net/espokemon/images/f/f2/Eevee.png/revision/latest?cb=20150621181400'),
            height: 250,
            fit: BoxFit.contain,
          ),
          Container(
            color: colors.primary,
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.all(10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text('Tipo'),
                    Text(
                      'Normal',
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text('Generacion'),
                    Text('1er Gen', style: TextStyle(fontSize: 24))
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text('Color'),
                    Text(
                      'Marron',
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Text(
              'Amet proident laboris magna qui reprehenderit sit. Duis ex sit exercitation magna veniam exercitation deserunt ullamco commodo ut. Nostrud mollit eiusmod ut cupidatat non esse amet commodo tempor.'),
        ],
      ),
    );
  }
}
