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
    apiKey: 'AIzaSyCHOfHkH2_DOT3VMzZggx6lDM72ih7-mNQ',
    appId: '1:669896017866:web:b656308055440c4f7ef133',
    messagingSenderId: '669896017866',
    projectId: 'flutterfirebase-200f7',
    authDomain: 'flutterfirebase-200f7.firebaseapp.com',
    databaseURL: 'https://flutterfirebase-200f7-default-rtdb.firebaseio.com',
    storageBucket: 'flutterfirebase-200f7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPz_NCAa7WaAfp7Hr1Ua8g8qyDE8xBWE0',
    appId: '1:669896017866:android:a704b2fc2b524c227ef133',
    messagingSenderId: '669896017866',
    projectId: 'flutterfirebase-200f7',
    databaseURL: 'https://flutterfirebase-200f7-default-rtdb.firebaseio.com',
    storageBucket: 'flutterfirebase-200f7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDDHxpubkY5c9fYZ7xpkr8aSfK0P8SrkJU',
    appId: '1:669896017866:ios:95e47b27fba862757ef133',
    messagingSenderId: '669896017866',
    projectId: 'flutterfirebase-200f7',
    databaseURL: 'https://flutterfirebase-200f7-default-rtdb.firebaseio.com',
    storageBucket: 'flutterfirebase-200f7.appspot.com',
    iosBundleId: 'com.example.teste',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDDHxpubkY5c9fYZ7xpkr8aSfK0P8SrkJU',
    appId: '1:669896017866:ios:95e47b27fba862757ef133',
    messagingSenderId: '669896017866',
    projectId: 'flutterfirebase-200f7',
    databaseURL: 'https://flutterfirebase-200f7-default-rtdb.firebaseio.com',
    storageBucket: 'flutterfirebase-200f7.appspot.com',
    iosBundleId: 'com.example.teste',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCHOfHkH2_DOT3VMzZggx6lDM72ih7-mNQ',
    appId: '1:669896017866:web:28d028cefc63d8707ef133',
    messagingSenderId: '669896017866',
    projectId: 'flutterfirebase-200f7',
    authDomain: 'flutterfirebase-200f7.firebaseapp.com',
    databaseURL: 'https://flutterfirebase-200f7-default-rtdb.firebaseio.com',
    storageBucket: 'flutterfirebase-200f7.appspot.com',
  );

}