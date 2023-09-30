// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class BMI_Result extends StatelessWidget {
  final int result;
  final bool isMALE;
  final int age;

  BMI_Result({
    required this.result,
    required this.isMALE,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[500],
        title: Text(
          'BMI Result',
          style: TextStyle(fontSize: 26, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GET Result',
              style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              ' Gender :${isMALE ? 'Male' : 'Female'}',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[500]),
            ),
            Text(
              ' Result : $result',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[500]),
            ),
            Text(
              'AGE : $age',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[500]),
            ),
          ],
        ),
      ),
    );
  }
}
