import 'package:flutter/material.dart';
import 'package:maiza_portifolio/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maiza Portifolio',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
