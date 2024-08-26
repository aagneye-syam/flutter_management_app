import 'package:flutter/material.dart';

class FinanceDashboard extends StatelessWidget {
  const FinanceDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offset Printing Press'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Back arrow instead of menu
          onPressed: () {
            // Define back button behavior here
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
