import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inicio_de_seccion_auth/pages/HomePage.dart';
import 'package:inicio_de_seccion_auth/pages/loginRegisterPage.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        // Escuchar cambios en el estado de autenticación utilizando Firebase Authentication.
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // Comprobar si un usuario ha iniciado sesión.
          if (snapshot.hasData) {
            return const HomePage(); // Si hay un usuario autenticado, muestra la página de inicio.
          }
          // Usuario no ha iniciado sesión.
          else {
            return const LoginRegisterPAge(); // Si no hay usuario autenticado, muestra la página de inicio de sesión o registro.
          }
        },
      ),
    );
  }
}
