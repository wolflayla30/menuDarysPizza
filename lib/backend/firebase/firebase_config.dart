import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB2SuVCE45to4NSMJuhGkH5764ZMVz0hoA",
            authDomain: "menurestaurante-2011f.firebaseapp.com",
            projectId: "menurestaurante-2011f",
            storageBucket: "menurestaurante-2011f.appspot.com",
            messagingSenderId: "822263632368",
            appId: "1:822263632368:web:8c5511ad28fcbd81988d35"));
  } else {
    await Firebase.initializeApp();
  }
}
