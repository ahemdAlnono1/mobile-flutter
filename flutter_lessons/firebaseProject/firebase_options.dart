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
    apiKey: 'AIzaSyBjPLFJe_A3U6rHNm1WayqgfMGOxFM9lR0',
    appId: '1:13166081411:web:77397619ba99c8826232b6',
    messagingSenderId: '13166081411',
    projectId: 'alltest1-78631',
    authDomain: 'alltest1-78631.firebaseapp.com',
    storageBucket: 'alltest1-78631.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBV2TPPq7qVdCUGPScXQJCeZPXntiBt5X8',
    appId: '1:13166081411:android:b668047bf6db484d6232b6',
    messagingSenderId: '13166081411',
    projectId: 'alltest1-78631',
    storageBucket: 'alltest1-78631.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD1QdJqYJcT65UNfyc7CUPNZeQHcXUwzwA',
    appId: '1:13166081411:ios:4478be75e13c5d956232b6',
    messagingSenderId: '13166081411',
    projectId: 'alltest1-78631',
    storageBucket: 'alltest1-78631.appspot.com',
    iosClientId: '13166081411-4ga9ur59faslscabrepvdi4po8prbgct.apps.googleusercontent.com',
    iosBundleId: 'com.example.alltest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD1QdJqYJcT65UNfyc7CUPNZeQHcXUwzwA',
    appId: '1:13166081411:ios:4478be75e13c5d956232b6',
    messagingSenderId: '13166081411',
    projectId: 'alltest1-78631',
    storageBucket: 'alltest1-78631.appspot.com',
    iosClientId: '13166081411-4ga9ur59faslscabrepvdi4po8prbgct.apps.googleusercontent.com',
    iosBundleId: 'com.example.alltest',
  );
}
