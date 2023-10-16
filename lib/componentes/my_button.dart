import 'package:flutter/material.dart';

class my_button extends StatelessWidget {
  final Function()? onTap;  // Función que se ejecuta cuando se toca el botón.
  final String text;  // Texto que se muestra en el botón.
  
  const my_button({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,  // Asigna la función onTap al Gesture Detector.
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.black,  // Color de fondo del botón.
            borderRadius: BorderRadius.circular(10)),  // Estilo del botón.
        child: Center(
          child: Text(
            text,  // Muestra el texto especificado en el botón.
            style: const TextStyle(
                color: Colors.white,  // Color del texto.
                fontWeight: FontWeight.bold,  // Estilo de fuente en negrita.
                fontSize: 16),  // Tamaño de fuente.
          ),
        ),
      ),
    );
  }
}
