import 'package:calc/screens/Calc.dart';
import 'package:calc/screens/SignUp.dart';
import 'package:calc/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: MyCalc(),
      debugShowCheckedModeBanner: false,
    );
  }
}