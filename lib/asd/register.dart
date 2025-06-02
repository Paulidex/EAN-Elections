import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String?> registerUser(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print("Usuario registrado: ${userCredential.user?.email}");
      return null; // Sin error
    } on FirebaseAuthException catch (e) {
      return e.message ?? 'Error desconocido';
    }
  }

  Future<String?> loginUser(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print("Usuario logueado: ${userCredential.user?.email}");
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message ?? 'Error desconocido';
    }
  }
}
