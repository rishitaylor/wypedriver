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
    apiKey: 'AIzaSyBJ3bce-RZgcvK853HIP_SqtUZ6kPYB5OA',
    appId: '1:228853359778:web:0156d2922a31f237c7e3fb',
    messagingSenderId: '228853359778',
    projectId: 'wypeadmin',
    authDomain: 'wypeadmin.firebaseapp.com',
    storageBucket: 'wypeadmin.appspot.com',
    measurementId: 'G-W23JV4HRNG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCsHH6aIbrV3z3yeUvktx4jICjopPmcafk',
    appId: '1:228853359778:android:d50462b09825f1a5c7e3fb',
    messagingSenderId: '228853359778',
    projectId: 'wypeadmin',
    storageBucket: 'wypeadmin.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZh2FPe2S81DsxYV6iMMCgYZhAI9VrxVY',
    appId: '1:228853359778:ios:2618264333312896c7e3fb',
    messagingSenderId: '228853359778',
    projectId: 'wypeadmin',
    storageBucket: 'wypeadmin.appspot.com',
    androidClientId: '228853359778-1m71ksjbvq540qi35ndq4ini8ovriump.apps.googleusercontent.com',
    iosClientId: '228853359778-56hkd0lmrc58ln82bb86m6o8qh3bq2j7.apps.googleusercontent.com',
    iosBundleId: 'com.example.wypedriver',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBZh2FPe2S81DsxYV6iMMCgYZhAI9VrxVY',
    appId: '1:228853359778:ios:4d21e7e7d73d6850c7e3fb',
    messagingSenderId: '228853359778',
    projectId: 'wypeadmin',
    storageBucket: 'wypeadmin.appspot.com',
    androidClientId: '228853359778-1m71ksjbvq540qi35ndq4ini8ovriump.apps.googleusercontent.com',
    iosClientId: '228853359778-idatab1p5mh51523qf3s6dgs3l3u0mlc.apps.googleusercontent.com',
    iosBundleId: 'com.example.wypedriver.RunnerTests',
  );
}
