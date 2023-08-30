import 'package:flutter/material.dart';
import 'package:shadow/pages/dark-neu-screen.dart';
import 'package:shadow/pages/light-neu-screen.dart';
import 'package:shadow/pages/neu-toggler.dart';

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
      home: NeuToggler()
    );
  }
}
