import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:reservapp/firebase_options.dart';
import 'package:reservapp/pages/add_screen.dart';
import 'package:reservapp/pages/edit_screen.dart';
import 'package:reservapp/pages/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        "/add": (context) => const AddPersona(),
        "/edit": (context) => const EditPersona(),
      },
    );
  }
}
