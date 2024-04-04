import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login to Darwizzy Break'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Image.network('https://backend.liverpoolfc.com/sites/default/files/styles/xs/public/2023-07/pp-23-24-mens-home-body-nunez.webp?itok=lBxmTVZ9', width: 100, height: 100),
              ),
            ),
            Card(
              margin: EdgeInsets.only(bottom: 20),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Darwizzy-Email',
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(bottom: 20),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Darwizzy-Password',
                  ),
                  obscureText: true,
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Darwizzy-Login'),
              onPressed: () {
                // Implement login functionality here
              },
            ),
            ElevatedButton(
              child: Text('Darwizzy-Register'),
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
            ElevatedButton(
              child: Text('Go to Darwizzy-Products'),
              onPressed: () {
                Navigator.pushNamed(context, '/products');
              },
            ),
          ],
        ),
      ),
    );
  }
}