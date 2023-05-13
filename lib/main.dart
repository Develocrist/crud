import 'package:flutter/material.dart';
import 'package:reservapp/pages/add_screen.dart';
import 'package:reservapp/pages/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/add': (context) => const addPersona(),
      },
    );
  }
}
