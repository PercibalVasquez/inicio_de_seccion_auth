import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inicio_de_seccion_auth/componentes/mozaicoCuadrado.dart';
import 'package:inicio_de_seccion_auth/componentes/my_button.dart';
import 'package:inicio_de_seccion_auth/componentes/mytext.dart';
import 'package:inicio_de_seccion_auth/services/auth_service.dart';

class LoginPAge extends StatefulWidget {
  final Function()? onTap;
  const LoginPAge({super.key, required this.onTap});

  @override
  State<LoginPAge> createState() => _LoginPAgeState();
}

class _LoginPAgeState extends State<LoginPAge> {
  // Controladores de texto para los campos de correo electrónico y contraseña.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Método para iniciar sesión.
  void iniciarSeccion() async {
    // Mostrar un círculo de carga mientras se procesa la solicitud de inicio de sesión.
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      // Iniciar sesión con el correo electrónico y la contraseña proporcionados.
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      // Cerrar el círculo de carga y regresar a la página anterior.
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // Capturar errores de Firebase Authentication y mostrar mensajes de error.
      Navigator.pop(context);
      mostrarMsjErrir(e.code);
    }
  }

  // Método para mostrar un mensaje de error en un diálogo.
  void mostrarMsjErrir(String mensaje) {
    showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              mensaje,
              style: const TextStyle(color: Colors.grey),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                // Icono de candado como logo.
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),
                // Mensaje de bienvenida.
                Text(
                  "Bienvenido de Vuelta te Extrañamos",
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                // Campo de entrada de correo electrónico.
                const SizedBox(
                  height: 15,
                ),
                Mytext(
                  controller: emailController,
                  hintext: "nombre de Usuario",
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                // Campo de entrada de contraseña.
                Mytext(
                  controller: passwordController,
                  hintext: "ingrese contraseña",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                // Enlace "Olvidé mi contraseña".
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Olvide Contraseña",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // Botón para iniciar sesión.
                my_button(
                  onTap: iniciarSeccion,
                  text: "Ingresar",
                ),
                const SizedBox(
                  height: 15,
                ),
                // Sección "Continuar con".
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.7,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Continuar con",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Botones de Google y Apple para el inicio de sesión.
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Botón de Google (que parece estar utilizando la función de Google).
                    mozaicoCuadrado(
                        onTap: () => AuthServices().signInWithGoogle(),
                        imaPath: "lib/img/google.png"),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        height: 30,
                      ),
                    ),
                    // Botón de Apple (que parece estar utilizando la función de Google).
                    mozaicoCuadrado(
                        onTap: () => AuthServices().signInWithGoogle(),
                        imaPath: "lib/img/apple.png"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // Enlace para registrarse si no tienes una cuenta.
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "No eres Mienbro?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        "Registrate Ahora",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
