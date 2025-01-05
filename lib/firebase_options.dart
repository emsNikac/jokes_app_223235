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
    apiKey: 'AIzaSyBlGOVsNwsArB7Swv8kqHECdyuvlTrKewQ',
    appId: '1:72278734598:web:708463b73b5c1204f15087',
    messagingSenderId: '72278734598',
    projectId: 'jokesapp-76efa',
    authDomain: 'jokesapp-76efa.firebaseapp.com',
    storageBucket: 'jokesapp-76efa.firebasestorage.app',
    measurementId: 'G-9D1PWDM48Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAKiZopcQan3v9L4doudJzqRBkIVwCXfXw',
    appId: '1:72278734598:android:28ffbd7c2c5434abf15087',
    messagingSenderId: '72278734598',
    projectId: 'jokesapp-76efa',
    storageBucket: 'jokesapp-76efa.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCgheHPSMrYg3zq2hiNKlSoDvGOFbXADpQ',
    appId: '1:72278734598:ios:50e9fb76bfce5f49f15087',
    messagingSenderId: '72278734598',
    projectId: 'jokesapp-76efa',
    storageBucket: 'jokesapp-76efa.firebasestorage.app',
    iosBundleId: 'com.example.mis',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCgheHPSMrYg3zq2hiNKlSoDvGOFbXADpQ',
    appId: '1:72278734598:ios:50e9fb76bfce5f49f15087',
    messagingSenderId: '72278734598',
    projectId: 'jokesapp-76efa',
    storageBucket: 'jokesapp-76efa.firebasestorage.app',
    iosBundleId: 'com.example.mis',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBlGOVsNwsArB7Swv8kqHECdyuvlTrKewQ',
    appId: '1:72278734598:web:f76d71b1475fc937f15087',
    messagingSenderId: '72278734598',
    projectId: 'jokesapp-76efa',
    authDomain: 'jokesapp-76efa.firebaseapp.com',
    storageBucket: 'jokesapp-76efa.firebasestorage.app',
    measurementId: 'G-KCJE7FTFXW',
  );
}
