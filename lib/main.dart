import 'package:flutter/material.dart';
import 'package:flutter_management_app/OrderDashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrderDashboard(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: (Colors.blueGrey),
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              size: 37,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
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
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 86, 89, 102),
                ),
                child: const Center(
                  child: Text(
                    'Offset Printing Press',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Home'),
                onTap: () {
                  // Action when 'Home' is clicked
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Orders'),
                onTap: () {
                  // Action when 'Orders' is clicked
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Tasks'),
                onTap: () {
                  // Action when 'Tasks' is clicked
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Finance'),
                onTap: () {
                  // Action when 'Finance' is clicked
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WelcomeCard(),
              SizedBox(height: 90),
              ProductListCard(),
            ],
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
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: Offset(0, 5))
        ],
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
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.exit_to_app),
            label: Text('Sign Out'),
          )
        ],
      ),
    );
  }
}

class ProductListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Product List',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade300),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: Envelope',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Details: envelope',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'GST: 18',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                      child: Text('Edit'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      child: Text('Delete'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
