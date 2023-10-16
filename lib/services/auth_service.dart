import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {
  // Método para iniciar sesión con Google.
  signInWithGoogle() async {
    // Iniciar el proceso de inicio de sesión de Google.
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    
    // Obtener detalles de autenticación de la solicitud.
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    
    // Crear una nueva credencial de usuario utilizando los tokens de acceso e ID de Google.
    final credencial = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);
    
    // Finalmente, iniciar sesión con Firebase usando la credencial creada.
    return await FirebaseAuth.instance.signInWithCredential(credencial);
  }
}