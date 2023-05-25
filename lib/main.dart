import 'package:flutter/material.dart';
import 'views/main_menu.dart';

//Imports de firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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