import 'package:flutter/material.dart';
import 'login_page.dart';
import 'registration_page.dart';
import 'products_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegistrationPage(),
        '/products': (context) => ProductsPage(),
      },
    );
  }
}