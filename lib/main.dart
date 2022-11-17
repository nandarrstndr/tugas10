import 'package:flutter/material.dart';
import 'package:tugas10/FormLogin.dart';
import 'package:tugas10/home.dart';
import 'package:tugas10/FormRegister.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selamat Datang',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        HomeScreen.routes: (context) => const HomeScreen(),
        FormScreen.routes: (context) => const FormScreen(),
        Signup.routes: (context) => const Signup(),
      },
    );
  }
}
