import 'package:flutter/material.dart';
import 'package:task_1/Views/HomePage.dart';
import 'package:task_1/Views/addNote.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(),

    );
  }
}
