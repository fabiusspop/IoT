import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Darwizzy-Products'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      leading: Image.network('https://backend.liverpoolfc.com/sites/default/files/styles/xs/public/2023-07/pp-23-24-mens-home-body-nunez.webp?itok=lBxmTVZ9/250'),
                      title: Text('Darwizzy-Product'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image.network('https://backend.liverpoolfc.com/sites/default/files/styles/xs/public/2023-07/pp-23-24-mens-home-body-nunez.webp?itok=lBxmTVZ9/250'),
                      title: Text('Darwizzy-Break-Product'),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              child: Text('Go to Darwizzy-Login'),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            ElevatedButton(
              child: Text('Go to Darwizzy-Register'),
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
          ],
        ),
      ),
    );
  }
}