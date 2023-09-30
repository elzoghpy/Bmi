// ignore_for_file: prefer_const_constructors, unused_label, empty_statements, dead_code

import 'package:bmi/bmi_app/bmi/BMI_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BMI_Screen());
  }
}
