import 'package:flutter/material.dart';
import 'package:mysecurity/screens/cards-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const CardsScreen());
  }
}
