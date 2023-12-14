import 'package:flutter/material.dart';

class FlexScreenRow extends StatelessWidget {
  const FlexScreenRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de alinacion en Flutter por Row'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.black12,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.green,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.black12,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 50,
                  ),
                  Container(
                    color: Colors.green,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.black12,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.black12,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.black12,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.black12,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    height: double.infinity,
                    width: 50,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
