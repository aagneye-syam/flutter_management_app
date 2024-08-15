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
        body: SafeArea(
          child: Center(
            child: WelcomeCard(),
          ),
        ),
      ),
    );
  }
}

class WelcomeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(255, 5, 66, 116),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.account_circle,
              size: 50, color: const Color.fromARGB(255, 81, 81, 81)),
          SizedBox(height: 20),
          Text(
            'Welcome, Username',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
