import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('This is some text'),
            Expanded(

              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(6, (index) {
                  return Center(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('Item $index'),
                      color: Colors.teal[100 * (index % 9)],
                    ),
                  );
                }),
              ),
            ),
            ElevatedButton(

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
              child: const Text('Go to Image Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Screen"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(),
            ),
            Image.network('https://placekitten.com/100/100'),
            Stack(
              children: <Widget>[
                Container(color: Colors.yellow, height: 150, width: 50),
                Container(color: Colors.red, height: 100, width: 50),
                Container(color: Colors.green, height: 50, width: 50),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home),
                Icon(Icons.star),
                Icon(Icons.star),
              ],
            ),

            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Return to Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
