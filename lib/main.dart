
import 'package:flutter/material.dart';
import 'package:geminibot/view/homescreen/homepage.dart';

Future<void> main() async {
   
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
