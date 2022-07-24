import 'package:flutter/material.dart';
import 'package:bmi_app/screens/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF12153B),
        primaryColor: const Color(0xFF12153B),
      ),
      home: const InputPage(),
    );
  }
}
