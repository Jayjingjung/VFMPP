import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'), // Replace with your actual title
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu), // Notification icon
            onPressed: () {
              Navigator.pushNamed(context, "/profile");
            },
          ),
        ],
        backgroundColor: Colors.teal, // Background color of AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Your main content here
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Main content or message goes here', // Replace with your content
                style: TextStyle(fontSize: 18.0),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/leader");
              },
              child: Text('Stard'), // Replace with your button label
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Button background color
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/form");
              },
              child: Text('Form'), // Replace with your button label
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Button background color
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                color: Colors.black45, // Background color
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.home,
                    color: Color.fromARGB(255, 12, 7, 7)), // Icon color
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        // Add onTap logic here if needed
      ),
    );
  }
}
