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
    apiKey: 'AIzaSyCIZwicz4lfe_K4deuWhiZyUNsVQFatB9c',
    appId: '1:379687735081:web:ed2df592588691a261b138',
    messagingSenderId: '379687735081',
    projectId: 'universe-app-4ac0a',
    authDomain: 'universe-app-4ac0a.firebaseapp.com',
    storageBucket: 'universe-app-4ac0a.appspot.com',
    measurementId: 'G-JNLDHMZ2TE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCua5vktX761539qJ66SRl1Wb-yWVGs-Gg',
    appId: '1:379687735081:android:9f7d31e5b11e5c2a61b138',
    messagingSenderId: '379687735081',
    projectId: 'universe-app-4ac0a',
    storageBucket: 'universe-app-4ac0a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-p22Oxs8A-4Qjn6ViazlGlvJZELKYMNY',
    appId: '1:379687735081:ios:229c021035a2b41161b138',
    messagingSenderId: '379687735081',
    projectId: 'universe-app-4ac0a',
    storageBucket: 'universe-app-4ac0a.appspot.com',
    iosClientId: '379687735081-fcdnv8sjakdhhrvea2f4cfsd9u77vfme.apps.googleusercontent.com',
    iosBundleId: 'com.example.universeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-p22Oxs8A-4Qjn6ViazlGlvJZELKYMNY',
    appId: '1:379687735081:ios:c281a5ce526822d461b138',
    messagingSenderId: '379687735081',
    projectId: 'universe-app-4ac0a',
    storageBucket: 'universe-app-4ac0a.appspot.com',
    iosClientId: '379687735081-qp6ibo4ehvs6500uu6iu5ud5rdi8121g.apps.googleusercontent.com',
    iosBundleId: 'com.example.universeApp.RunnerTests',
  );
}