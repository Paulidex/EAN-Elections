import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final FirebaseAuth _auth = FirebaseAuth.instance;

// Leer perfil del usuario actual
Future<Map<String, dynamic>?> getUserProfile() async {
  final uid = _auth.currentUser?.uid;
  if (uid == null) return null;

  final doc = await _firestore.collection('users').doc(uid).get();
  if (doc.exists) {
    return doc.data();
  } else {
    return null;
  }
}

// Guardar o actualizar perfil (agregando el userId explícitamente)
Future<void> updateUserProfile(Map<String, dynamic> data) async {
  final uid = _auth.currentUser?.uid;
  if (uid == null) return;

  await _firestore.collection('users').doc(uid).set({
    'userId': uid,  // <-- Aquí agregas el userId explícitamente
    ...data,
  }, SetOptions(merge: true));
}
