// auth_service.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// Función para iniciar sesión con Google
Future<void> signInWithGoogle() async {
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) {
      // El usuario canceló el inicio de sesión
      return;
    }

    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Inicia sesión con las credenciales de Google
    final userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
    final user = userCredential.user;

    if (user != null) {
      // Guardar los datos en Firestore
      final uid = user.uid;
      final displayName = user.displayName ?? '';
      final email = user.email ?? '';

      final userDoc = FirebaseFirestore.instance.collection('users').doc(uid);
      await userDoc.set({
        'userId': uid,
        'name': displayName,
        'email': email,
      }, SetOptions(merge: true));
    }
  } catch (e) {
    print('Error en autenticación con Google: $e');
  }
}

// Función para iniciar sesión o registrar con email y contraseña
Future<void> signInWithEmail(String email, String password, bool isLogin) async {
  try {
    if (isLogin) {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    } else {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    }
  } on FirebaseAuthException catch (e) {
    throw e.message ?? 'Error en autenticación';
  }
}

