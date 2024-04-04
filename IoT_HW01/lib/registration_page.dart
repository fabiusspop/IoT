import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Darwizzy-Register'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
              child: Text('Darwizzy-Register'),
              onPressed: () {
                // Implement registration functionality here
              },
            ),
            ElevatedButton(
              child: Text('Darwizzy-Login'),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
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