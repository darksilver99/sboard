import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBhQuOCeHXqg0Xio3BbtQX9Y6rlVKTkR1M",
            authDomain: "silver-65166.firebaseapp.com",
            projectId: "silver-65166",
            storageBucket: "silver-65166.appspot.com",
            messagingSenderId: "622357353461",
            appId: "1:622357353461:web:8fb7bff2e488da79b4c6bc",
            measurementId: "G-E2WQ6ZH53S"));
  } else {
    await Firebase.initializeApp();
  }
}
