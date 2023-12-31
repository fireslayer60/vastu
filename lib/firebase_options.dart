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
    apiKey: 'AIzaSyAScdP53BDlIhShJk_fJ0T5wxkrxq_M9YM',
    appId: '1:789995622781:web:eebdb5e748bc9b037f3c14',
    messagingSenderId: '789995622781',
    projectId: 'vastu-17fa4',
    authDomain: 'vastu-17fa4.firebaseapp.com',
    storageBucket: 'vastu-17fa4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAEJAaLZJ_2-uMlNUdFB5rv40n7oAekAkE',
    appId: '1:789995622781:android:027ba7a3d5e860307f3c14',
    messagingSenderId: '789995622781',
    projectId: 'vastu-17fa4',
    storageBucket: 'vastu-17fa4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDcto76Tb51i6-qYuWTB0OgRD-T0HszcZo',
    appId: '1:789995622781:ios:22aa5bff7c06eb667f3c14',
    messagingSenderId: '789995622781',
    projectId: 'vastu-17fa4',
    storageBucket: 'vastu-17fa4.appspot.com',
    iosBundleId: 'com.example.vastu',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDcto76Tb51i6-qYuWTB0OgRD-T0HszcZo',
    appId: '1:789995622781:ios:8c77a1d636493bce7f3c14',
    messagingSenderId: '789995622781',
    projectId: 'vastu-17fa4',
    storageBucket: 'vastu-17fa4.appspot.com',
    iosBundleId: 'com.example.vastu.RunnerTests',
  );
}
