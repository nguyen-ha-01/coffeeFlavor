import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart';

class FirebaseConfig {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return defaultOption;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return defaultOption;
      case TargetPlatform.iOS:
        return defaultOption;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
        return defaultOption;
    }
  }

  static const FirebaseOptions defaultOption = FirebaseOptions(
      apiKey: "AIzaSyDzZd7RCVT9YNTDkKXzPolZzbeO5j1EKvc",
      authDomain: "user-task-ee629.firebaseapp.com",
      databaseURL: "https://user-task-ee629-default-rtdb.firebaseio.com",
      projectId: "user-task-ee629",
      storageBucket: "user-task-ee629.appspot.com",
      messagingSenderId: "864805389922",
      appId: "1:864805389922:web:3a29e972692977c74ef33b",
      measurementId: "G-JR8NL2RHYS");
}
