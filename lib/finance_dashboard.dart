import 'package:flutter/material.dart';

class FinanceDashboard extends StatelessWidget {
  const FinanceDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Offset Printing Press'),
          centerTitle: true,
          actions: [
            CircleAvatar(
              child: Text('A'),
              backgroundColor: Colors.brown,
            ),
          ]),
    );
  }
}
