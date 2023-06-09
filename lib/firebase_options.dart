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
    apiKey: 'AIzaSyDc_ne-LAHJUFJitwsdH5UuTjdpEAJ5OUA',
    appId: '1:620850246541:web:f30723f777cfdd11c403c4',
    messagingSenderId: '620850246541',
    projectId: 'flutter-test-3c682',
    authDomain: 'flutter-test-3c682.firebaseapp.com',
    storageBucket: 'flutter-test-3c682.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCj8OIYRdZnWMsznrEGsaSy9Qf9kM_h-B8',
    appId: '1:620850246541:android:cb3c802c27c4dec0c403c4',
    messagingSenderId: '620850246541',
    projectId: 'flutter-test-3c682',
    storageBucket: 'flutter-test-3c682.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCiZ3OMJP3dHqSSj-mPtWXAODbjEtTdAxo',
    appId: '1:620850246541:ios:62e1136b87192532c403c4',
    messagingSenderId: '620850246541',
    projectId: 'flutter-test-3c682',
    storageBucket: 'flutter-test-3c682.appspot.com',
    iosClientId: '620850246541-7ron5scbk74122evvlb725b0fk5rk6hh.apps.googleusercontent.com',
    iosBundleId: 'com.example.reservapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCiZ3OMJP3dHqSSj-mPtWXAODbjEtTdAxo',
    appId: '1:620850246541:ios:62e1136b87192532c403c4',
    messagingSenderId: '620850246541',
    projectId: 'flutter-test-3c682',
    storageBucket: 'flutter-test-3c682.appspot.com',
    iosClientId: '620850246541-7ron5scbk74122evvlb725b0fk5rk6hh.apps.googleusercontent.com',
    iosBundleId: 'com.example.reservapp',
  );
}
