import 'package:flutter/material.dart';
import 'package:inicio_de_seccion_auth/pages/auth_page.dart';
//firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();  // Aseguramos que Flutter esté inicializado antes de continuar.

  // Inicializamos Firebase con las opciones predeterminadas para la plataforma actual.
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());  // Ejecutamos nuestra aplicación MyApp.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // Constructor de la clase MyApp.

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,  // Desactiva la etiqueta de depuración en la esquina superior derecha.
      home: AuthPage(),  // Configura la página inicial de la aplicación como AuthPage.
    );
  }
}


/*keytool -list -v -keystore C:\Users\NOMBRE_USUARIO\.android\debug.keystore -alias androiddebugkey -storepass android -keypass android
para generar la keystore se avre cmd en donde este instalado el jdk C:\Program Files\Java\jdk-21
*/
