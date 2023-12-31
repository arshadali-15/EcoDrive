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
    apiKey: 'AIzaSyC3nDz7kUQPsCSMJWKRbL-5Gr7zZiryofM',
    appId: '1:3199885609:web:8e8bf6da0b7d9267e95738',
    messagingSenderId: '3199885609',
    projectId: 'ecodrive-415c8',
    authDomain: 'ecodrive-415c8.firebaseapp.com',
    storageBucket: 'ecodrive-415c8.appspot.com',
    measurementId: 'G-Q43PBMRTSX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDkG-T1TzLrAG9LriCFRlmjiDGMfX9CFH4',
    appId: '1:3199885609:android:6e73c048dfdea998e95738',
    messagingSenderId: '3199885609',
    projectId: 'ecodrive-415c8',
    storageBucket: 'ecodrive-415c8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDCPlvxBVl_-Du-duAZTtREQR4aVG6vc-M',
    appId: '1:3199885609:ios:19767d909d3470f1e95738',
    messagingSenderId: '3199885609',
    projectId: 'ecodrive-415c8',
    storageBucket: 'ecodrive-415c8.appspot.com',
    iosClientId: '3199885609-q87g1hutblk9fesbuacfn20bt9qep1v6.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecoDrive',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDCPlvxBVl_-Du-duAZTtREQR4aVG6vc-M',
    appId: '1:3199885609:ios:19767d909d3470f1e95738',
    messagingSenderId: '3199885609',
    projectId: 'ecodrive-415c8',
    storageBucket: 'ecodrive-415c8.appspot.com',
    iosClientId: '3199885609-q87g1hutblk9fesbuacfn20bt9qep1v6.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecoDrive',
  );
}
