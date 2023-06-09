import 'package:flutter/material.dart';
import 'package:reservapp/services/firebase_service.dart';

class AddPersona extends StatefulWidget {
  const AddPersona({super.key});

  @override
  State<AddPersona> createState() => _AddPersonaState();
}

class _AddPersonaState extends State<AddPersona> {
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('CRUD: Añadir persona', style: TextStyle(fontSize: 24)),
      ),
      body: Builder(builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    hintText: 'Ingresar nombre de persona'),
              ),
              ElevatedButton(
                onPressed: () async {
                  await addPeople(nameController.text).then((_) {
                    Navigator.pop(context);
                  });
                },
                child: const Text('Guardar'),
              ),
            ],
          ),
        );
      }),
    );
  }
}
