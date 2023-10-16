import 'package:flutter/material.dart';
import 'package:inicio_de_seccion_auth/pages/inicio.dart';
import 'package:inicio_de_seccion_auth/pages/register_page.dart';

class LoginRegisterPAge extends StatefulWidget {
  const LoginRegisterPAge({super.key});

  @override
  State<LoginRegisterPAge> createState() => _LoginRegisterPAgeState();
}

class _LoginRegisterPAgeState extends State<LoginRegisterPAge> {
  // Un valor booleano que indica si se debe mostrar la página de inicio de sesión o de registro.
  bool showLoginPage = true;

  // Método para alternar entre la página de inicio de sesión y la de registro.
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Si showLoginPage es true, muestra la página de inicio de sesión.
    if (showLoginPage) {
      return LoginPAge(onTap: togglePages); // Llama al constructor LoginPAge con la función de alternar páginas.
    } else {
      // Si showLoginPage es false, muestra la página de registro.
      return RegisterPage(
        onTap: togglePages, // Llama al constructor RegisterPage con la función de alternar páginas.
      );
    }
  }
}