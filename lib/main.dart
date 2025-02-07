import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  print("hello world");
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        body: Container(
          height: 300,
          width: 300,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
