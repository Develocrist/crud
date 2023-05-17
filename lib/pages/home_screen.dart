import 'package:flutter/material.dart';
import 'package:reservapp/services/firebase_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba de CRUD'),
      ),
      body: FutureBuilder(
        future: getPersona(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: ((context, index) {
                return Dismissible(
                  onDismissed: (direction) async {
                    await deletePeople(snapshot.data?[index]['uid']);
                    print('nombre eliminado');
                    snapshot.data?.removeAt(index);
                  },
                  confirmDismiss: (direction) async {
                    bool result = false;
                    result = await showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                                'Desea eliminar a ${snapshot.data?[index]['name']} ?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  return Navigator.pop(context, false);
                                },
                                child: const Text(
                                  'Cancelar',
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  return Navigator.pop(context, true);
                                },
                                child: const Text('Si, eliminar',
                                    style: TextStyle(color: Colors.red)),
                              ),
                            ],
                          );
                        });
                    return result;
                  },
                  direction: DismissDirection.endToStart,
                  background: Container(
                      child: const Icon(Icons.delete), color: Colors.red),
                  key: Key(snapshot.data?[index]['uid']),
                  child: ListTile(
                    subtitle: Text(
                      'Desliza a la izquierda para borrar',
                    ),
                    title: Text(snapshot.data?[index]['name']),
                    onTap: (() async {
                      await Navigator.pushNamed(context, '/edit', arguments: {
                        "name": snapshot.data?[index]['name'],
                        "uid": snapshot.data?[index]['uid'],
                      });
                      setState(() {});
                    }),
                  ),
                );
              }),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, '/add');
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
