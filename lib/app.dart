import 'package:flutter/material.dart';
import 'screens/home.dart';

class BeerListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beer List App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

