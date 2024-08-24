import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
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
            ),
            SizedBox(width: 10),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Active Orders'),
              Tab(text: 'Completed Orders'),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Menu'),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 243, 131, 33),
                ),
              ),
              ListTile(
                title: Text('Option 1'),
                onTap: () {
                  // Handle navigation
                },
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(child: Text('No Active Orders')),
          Center(child: Text('No Completed Orders')),
        ]),
      ),
    );
  }
}
