import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: (Color.fromARGB(255, 86, 89, 102)),
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              size: 37,
            ),
            onPressed: () {},
          ),
          title: const Center(
            child: Text(
              'Offset printing press',
            ),
          ),
          actions: <Widget>[
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                        size: 24,
                        color: Colors.grey,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
