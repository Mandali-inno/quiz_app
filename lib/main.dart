import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Admin/admin_login.dart';
import 'package:quiz_app/pages/home.dart';
import 'package:quiz_app/pages/question.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "your_api_key",
            authDomain: "your_auth_domain",
            projectId: "your_project_id",
            storageBucket: "your_storage_bucket",
            messagingSenderId: "your_messaging_sender_id",
            appId: "your_app_id",
            measurementId: "your_measurement_id"));
  } else {
    await Firebase.initializeApp();
  }

  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: 'mandaliinno@gmail.com',
      password: '123456',
    );
    debugPrint('Signed in successfully: ${userCredential.user!.uid}');
  } catch (e) {
    debugPrint('Sign in failed: $e');
  }

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
      home: Home(),
    );
  }
}
