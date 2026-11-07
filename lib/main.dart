import 'package:dnd_bestiary/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DND bestiary',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
      home: const HomeScreen(),
    );
  }
}
