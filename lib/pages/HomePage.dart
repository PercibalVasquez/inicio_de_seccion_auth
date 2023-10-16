import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

// Obtener el usuario actualmente autenticado.
final user = FirebaseAuth.instance.currentUser!;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // Botón de cierre de sesión en la barra de aplicaciones.
          IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text(
          "Ha iniciado sesión como: ${user.email!}",  // Muestra el correo electrónico del usuario autenticado.
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  // Método para cerrar sesión.
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }
}
