// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAdIHp4D1jvPt18INAH015lB9Wib-JfX_k',
    appId: '1:1033721290494:web:08bd0e1c67aa07cd934faf',
    messagingSenderId: '1033721290494',
    projectId: 'flutter-masterclass-228e9',
    authDomain: 'flutter-masterclass-228e9.firebaseapp.com',
    storageBucket: 'flutter-masterclass-228e9.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyClF939KXjoDsRGzPh9NWdjXhoewauB6-4',
    appId: '1:1033721290494:android:1bd82d0d2590de74934faf',
    messagingSenderId: '1033721290494',
    projectId: 'flutter-masterclass-228e9',
    storageBucket: 'flutter-masterclass-228e9.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAKiLI4CvudhfiFMof-3PE9oowhuQ9hIis',
    appId: '1:1033721290494:ios:a9443a498fe5c3d5934faf',
    messagingSenderId: '1033721290494',
    projectId: 'flutter-masterclass-228e9',
    storageBucket: 'flutter-masterclass-228e9.firebasestorage.app',
    iosBundleId: 'com.example.flutterRpg',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAKiLI4CvudhfiFMof-3PE9oowhuQ9hIis',
    appId: '1:1033721290494:ios:a9443a498fe5c3d5934faf',
    messagingSenderId: '1033721290494',
    projectId: 'flutter-masterclass-228e9',
    storageBucket: 'flutter-masterclass-228e9.firebasestorage.app',
    iosBundleId: 'com.example.flutterRpg',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAdIHp4D1jvPt18INAH015lB9Wib-JfX_k',
    appId: '1:1033721290494:web:3cea6284062e06b2934faf',
    messagingSenderId: '1033721290494',
    projectId: 'flutter-masterclass-228e9',
    authDomain: 'flutter-masterclass-228e9.firebaseapp.com',
    storageBucket: 'flutter-masterclass-228e9.firebasestorage.app',
  );
}