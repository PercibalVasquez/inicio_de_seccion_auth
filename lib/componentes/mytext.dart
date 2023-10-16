import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  final controller;  // Controlador de texto asociado al campo de entrada.
  final String hintext;  // Texto de sugerencia que se muestra en el campo de entrada.
  final bool obscureText;  // Indica si el texto en el campo de entrada debe ser ocultado (por ejemplo, para contraseñas).
  
  const Mytext(
      {super.key,
      required this.controller,
      required this.hintext,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,  // Asigna el controlador de texto al campo de entrada.
        obscureText: obscureText,  // Indica si el texto debe ser ocultado.
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),  // Estilo del borde cuando no está enfocado.
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400)),  // Estilo del borde cuando está enfocado.
          fillColor: Colors.grey.shade200,  // Color de fondo del campo de entrada.
          filled: true,  // Indica si se debe rellenar el fondo del campo de entrada.
          hintText: hintext,  // Texto de sugerencia que se muestra.
          hintStyle: TextStyle(color: Colors.grey[500]),  // Estilo del texto de sugerencia.
        ),
      ),
    );
  }
}
