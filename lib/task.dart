import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Offset Printing Press'),
          actions: [
            CircleAvatar(
              child: Text('A'),
              backgroundColor: Colors.brown,
            )
          ],
        ),
      ),
    );
  }
}
