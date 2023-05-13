import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

//funcion que nos trae la información que se creo en firebase

Future<List> getPersona() async {
  List personas = [];
  CollectionReference collectionReferencePersona = db.collection('personas');

  QuerySnapshot queryPersonas = await collectionReferencePersona
      .get(); //esta linea trae toda la colección de persona contenida en firebase

  queryPersonas.docs.forEach((documento) {
    personas.add(documento.data());
  });

  await Future.delayed(const Duration(seconds: 3));

  return personas;
}
