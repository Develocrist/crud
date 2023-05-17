import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

//funcion que nos trae la información que se creo en firebase

Future<List> getPersona() async {
  List personas = [];
  QuerySnapshot queryPersonas = await db
      .collection('personas')
      .get(); //esta linea trae toda la colección de persona contenida en firebase

  for (var doc in queryPersonas.docs) {
    final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    final person = {
      //se crea un objeto persona la cual puede tener mas propiedades y eso es lo que importa
      "name": data['name'],
      "uid": doc.id,
    };
    personas.add(person);
  }

  return personas;
}

//añadir personas a la base de datos
Future<void> addPeople(String name) async {
  await db.collection('personas').add({"name": name});
}

//actualizar el nombre de la persona en la base de datos
Future<void> updatePeople(String uid, String newName) async {
  await db.collection('personas').doc(uid).set({'name': newName});
}

Future<void> deletePeople(String uid) async {
  await db.collection('personas').doc(uid).delete();
}
