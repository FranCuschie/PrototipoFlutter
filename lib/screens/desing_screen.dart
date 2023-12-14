import 'package:flutter/material.dart';

class DesingScreen extends StatelessWidget {
  const DesingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const FadeInImage(
            placeholder: AssetImage('assets/loading.jpg'),
            width: 30,
            image: NetworkImage(
                'https://rcdn.rolloid.net/uploads/2016/02/Gatos-han-dominado-los-selfies-03.jpg'),
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.blueGrey,
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.all(10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Titulo primario',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('Titulo secundario'),
                  ],
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                Text('41'),
              ],
            ),
          ),
          Container(
            color: Colors.blueGrey,
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.all(10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(
                      height: 5,
                    ),
                    Text('CALL')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.route),
                    SizedBox(
                      height: 5,
                    ),
                    Text('ROUTE')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share),
                    SizedBox(
                      height: 5,
                    ),
                    Text('SHARE')
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
