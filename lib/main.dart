import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: (Color.fromARGB(255, 86, 89, 102)),
          leading: IconButton(
            icon: Icon(Icons.menu),
          ),
        ),
      ),
    );
  }
}
