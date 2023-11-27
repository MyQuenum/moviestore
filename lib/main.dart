import 'package:flutter/material.dart';
import 'package:moviestore/pages/home/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MovieStore',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
