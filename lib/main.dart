import 'package:flutter/material.dart';
import 'package:task2/first.dart';
import 'package:task2/package.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primaryColor: Colors.cyan),
      home: Scaffold(
        body: First(),
      ),
    );
  }
}
