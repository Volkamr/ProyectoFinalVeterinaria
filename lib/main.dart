import 'package:flutter/material.dart';
import 'views/main_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Veterinaria Friendly Pets',
      theme: ThemeData(
      ),
      home: const mainMenu(),
    );
  }
}