import 'package:flutter/material.dart';
import 'package:flutter_basic/data_santri_screen.dart';
import 'package:flutter_basic/data_wali_screen.dart';
import 'package:flutter_basic/login_screen.dart';
import 'package:flutter_basic/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

