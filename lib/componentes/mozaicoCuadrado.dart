import 'package:flutter/material.dart';

class mozaicoCuadrado extends StatelessWidget {
  final String imaPath;  // Ruta de la imagen.
  final Function()? onTap;  // Función que se ejecuta cuando se toca el mosaico.
  
  const mozaicoCuadrado(
      {super.key, required this.imaPath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,  // Asigna la función onTap al Gesture Detector.
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[200]),  // Estilo del mosaico.
        child: Image.asset(
          imaPath,  // Muestra la imagen especificada.
          height: 40,  // Altura de la imagen.
        ),
      ),
    );
  }
}
