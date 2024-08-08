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
    apiKey: 'AIzaSyDU3mQisNT1ghKx8UdMjyswk3dcRf-4RbY',
    appId: '1:789280053299:web:af81de3275d303a7f26b46',
    messagingSenderId: '789280053299',
    projectId: 'gc-events-66',
    authDomain: 'gc-events-66.firebaseapp.com',
    storageBucket: 'gc-events-66.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJ_6jzlqiO5q0rQZXRrQPk04csQxeA7OQ',
    appId: '1:789280053299:android:a5e83447745da649f26b46',
    messagingSenderId: '789280053299',
    projectId: 'gc-events-66',
    storageBucket: 'gc-events-66.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZnygqnpuX815c5PsR2UbyhxOErqUv5B4',
    appId: '1:789280053299:ios:4834220039879133f26b46',
    messagingSenderId: '789280053299',
    projectId: 'gc-events-66',
    storageBucket: 'gc-events-66.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBZnygqnpuX815c5PsR2UbyhxOErqUv5B4',
    appId: '1:789280053299:ios:4834220039879133f26b46',
    messagingSenderId: '789280053299',
    projectId: 'gc-events-66',
    storageBucket: 'gc-events-66.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDU3mQisNT1ghKx8UdMjyswk3dcRf-4RbY',
    appId: '1:789280053299:web:45383711e86b8ce8f26b46',
    messagingSenderId: '789280053299',
    projectId: 'gc-events-66',
    authDomain: 'gc-events-66.firebaseapp.com',
    storageBucket: 'gc-events-66.appspot.com',
  );

}