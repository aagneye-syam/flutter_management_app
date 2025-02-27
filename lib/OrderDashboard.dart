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
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              //action to navigate
            },
          ),
          title: Text('Order Dashboard'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  //action
                },
                child: Text('ADD Order'),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search Orders',
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Product Name')),
                    DataColumn(label: Text('Quantity')),
                    DataColumn(label: Text('Deadline')),
                    DataColumn(label: Text('Status')),
                    DataColumn(label: Text('Action')),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text('No products added.')),
                        DataCell(Text('')),
                        DataCell(Text('')),
                        DataCell(Text('')),
                        DataCell(Text('')),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
