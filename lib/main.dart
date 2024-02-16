import 'package:flutter/material.dart';
import 'package:travelheba/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TravelHeba',
      home: HomeScreen(),
    );
  }
}


