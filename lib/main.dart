import 'package:flutter/material.dart';
import 'package:moviestore/models/catalog.dart';
import 'package:moviestore/pages/home/home.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => MoviesCatalog(), child: const MaterialApp(
      title: 'MovieStore',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));
  }
}
