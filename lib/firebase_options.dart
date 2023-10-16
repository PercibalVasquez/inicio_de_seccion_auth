// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAbZbQzATsef3Uhna5BcFLcyOpHWLIqoEI',
    appId: '1:243848926359:web:9e14290a61f2fa0cdbc5d2',
    messagingSenderId: '243848926359',
    projectId: 'autenticacionmurdo',
    authDomain: 'autenticacionmurdo.firebaseapp.com',
    storageBucket: 'autenticacionmurdo.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrQKevTVyHqIW7eu79st67rdMUMI_lhNc',
    appId: '1:243848926359:android:bfbc836f1863209fdbc5d2',
    messagingSenderId: '243848926359',
    projectId: 'autenticacionmurdo',
    storageBucket: 'autenticacionmurdo.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB59LP9GDwP5DJp_MV4zYpxyUA023gtL54',
    appId: '1:243848926359:ios:ca38f65477bdf943dbc5d2',
    messagingSenderId: '243848926359',
    projectId: 'autenticacionmurdo',
    storageBucket: 'autenticacionmurdo.appspot.com',
    iosBundleId: 'com.example.inicioDeSeccionAuth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB59LP9GDwP5DJp_MV4zYpxyUA023gtL54',
    appId: '1:243848926359:ios:8aee92ae6e2b84dfdbc5d2',
    messagingSenderId: '243848926359',
    projectId: 'autenticacionmurdo',
    storageBucket: 'autenticacionmurdo.appspot.com',
    iosBundleId: 'com.example.inicioDeSeccionAuth.RunnerTests',
  );
}
