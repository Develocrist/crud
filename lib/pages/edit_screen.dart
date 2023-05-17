import 'package:flutter/material.dart';
import 'package:reservapp/services/firebase_service.dart';

class EditPersona extends StatefulWidget {
  const EditPersona({super.key});

  @override
  State<EditPersona> createState() => _EditPersonaState();
}

class _EditPersonaState extends State<EditPersona> {
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;

    nameController.text = arguments['name'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Modificar persona', style: TextStyle(fontSize: 24)),
      ),
      body: Builder(builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration:
                    const InputDecoration(hintText: 'Ingrese el nuevo nombre'),
              ),
              ElevatedButton(
                onPressed: () async {
                  await updatePeople(arguments['uid'], nameController.text)
                      .then((_) {
                    //actualizar
                    Navigator.pop(context);
                  });
                },
                child: const Text('Actualizar'),
              ),
            ],
          ),
        );
      }),
    );
  }
}
