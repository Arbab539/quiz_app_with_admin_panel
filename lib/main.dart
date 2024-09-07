import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Admin/add_quiz.dart';
import 'package:quiz_app/Admin/admin_login.dart';
import 'package:quiz_app/pages/Question.dart';
import 'package:quiz_app/pages/home.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: 'AIzaSyAxTyaug3OGCf0f7A76izRnc8S5MahCZpI',
        appId: '1:1082852220561:android:6824dd1c6c72de73c7a930',
        messagingSenderId: '1082852220561',
        projectId: 'quiz-app-e34d0',
      storageBucket: "quiz-app-e34d0.appspot.com"
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AdminLogin(),
    );
  }
}


