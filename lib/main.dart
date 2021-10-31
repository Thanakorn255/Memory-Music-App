import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Login-Register/home.dart';
import 'package:my_app/index1.dart';
import 'package:my_app/Login-Register/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Memory App',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: Home_page());
  }
}
