import 'package:flutter/material.dart';

class OrderDashboard extends StatelessWidget {
  const OrderDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Order Dashboard",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}
