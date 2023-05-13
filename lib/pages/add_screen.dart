import 'package:flutter/material.dart';

class addPersona extends StatefulWidget {
  const addPersona({super.key});

  @override
  State<addPersona> createState() => _addPersonaState();
}

class _addPersonaState extends State<addPersona> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('CRUD: Añadir persona', style: TextStyle(fontSize: 24)),
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(hintText: 'Ingresar nombre de persona'),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Guardar'))
        ],
      ),
    );
  }
}
