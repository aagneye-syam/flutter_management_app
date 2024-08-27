import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

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
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Finance Dashboard',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDashboardTile('Total Amount', '₹0.00'),
                _buildDashboardTile('Total GST', '₹0.00'),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Line Graph',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildXAxisDropdown(),
            SizedBox(height: 10),
            _buildYAxisDropdown(),
          ],
        ),
      ),
    );
  }
}

Widget _buildDashboardTile(String title, String amount) {
  return Container(
    width: 160,
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 16)),
        SizedBox(height: 10),
        Text(amount,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

Widget _buildXAxisDropdown() {
  String selectedXAxisValue = 'Product Name'; // Default value
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('X-Axis', style: TextStyle(fontSize: 16)),
      SizedBox(height: 5),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: DropdownButton<String>(
          isExpanded: true,
          value: selectedXAxisValue,
          items: <String>['Product Name', 'Order ID'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            // Handle the change of selected X-Axis value
          },
        ),
      )
    ],
  );
}

Widget _buildYAxisDropdown() {
  String selectedYAxisValue = 'Amount'; // Default value
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Y-Axis', style: TextStyle(fontSize: 16)),
      SizedBox(height: 5),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: DropdownButton<String>(
          isExpanded: true,
          value: selectedYAxisValue,
          items: <String>['Amount', 'GST'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            // Handle the change of selected Y-Axis value
          },
        ),
      )
    ],
  );
}

Widget _buildLineGraph() {
  return SizedBox(
    height: 200,
    child: LineChart(
      LineChartData(
        gridData: FlGridData(show: true),
        titlesData: FlTitlesData(show: true),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: Colors.grey, width: 1),
        ),
        minX: 0,
        maxX: 7,
        minY: 0,
        maxY: 6,
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 3),
              FlSpot(1, 1),
              FlSpot(2, 4),
              FlSpot(3, 2),
              FlSpot(4, 5),
              FlSpot(5, 2),
              FlSpot(6, 4),
            ],
            isCurved: true,
            barWidth: 3,
            dotData: FlDotData(show: false),
          ),
        ],
      ),
    ),
  );
}
