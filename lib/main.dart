import 'package:chat_app/screens.dart/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      title: 'FlutterChat',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          //seedColor: Colors.blue,
          seedColor: const Color.fromARGB(255, 63, 17, 177),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const AuthScreen(),

    );
  }
}