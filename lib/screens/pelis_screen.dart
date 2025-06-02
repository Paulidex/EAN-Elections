import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PeliculasScreen extends StatelessWidget {
  const PeliculasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Vota por tu película")),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('peliculas').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final peliculas = snapshot.data!.docs;

          return ListView.builder(
            itemCount: peliculas.length,
            itemBuilder: (context, index) {
              final data = peliculas[index].data() as Map<String, dynamic>;
              final nombre = data['nombre'];
              final votos = data['votos'];

              return ListTile(
                title: Text(nombre),
                subtitle: Text('Votos: $votos'),
                trailing: IconButton(
                  icon: const Icon(Icons.how_to_vote),
                  onPressed: () {
                    final docId = peliculas[index].id;
                    FirebaseFirestore.instance
                        .collection('peliculas')
                        .doc(docId)
                        .update({'votos': votos + 1});
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
