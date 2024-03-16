import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Admin/admin_login.dart';
import 'package:quiz_app/pages/home.dart';
import 'package:quiz_app/pages/question.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBjI49ByZjPb2l3Qx6ysHk_Wvpo82zaPaY",
            authDomain: "quizapp-b9195.firebaseapp.com",
            projectId: "quizapp-b9195",
            storageBucket: "quizapp-b9195.appspot.com",
            messagingSenderId: "352716558626",
            appId: "1:352716558626:web:99639b67c00cbd3dc0d57b",
            measurementId: "G-7D1NT36ST1"));
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AdminLogin(),
    );
  }
}
