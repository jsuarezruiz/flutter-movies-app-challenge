import 'package:flutter/material.dart';
import 'package:movies_app_challenge/screens/movies.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Movies App",
      home: const Movies()
    );
  }
}
