import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBoD_-FuEb3L8cB1LbSW-hGh94YGBrrOZM",
            authDomain: "quizrush1-ae2da.firebaseapp.com",
            projectId: "quizrush1-ae2da",
            storageBucket: "quizrush1-ae2da.appspot.com",
            messagingSenderId: "883016337690",
            appId: "1:883016337690:web:baa676f1eecd9f730c44a3",
            measurementId: "G-RENMQ06TB0"));
  } else {
    await Firebase.initializeApp();
  }
}
