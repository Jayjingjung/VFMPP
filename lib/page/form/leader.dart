import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // For accessing clipboard or other system services if needed

class LeaderPage extends StatefulWidget {
  @override
  _LeaderPageState createState() => _LeaderPageState();
}

class _LeaderPageState extends State<LeaderPage> {
  final TextEditingController _routeNameController = TextEditingController();

  @override
  void dispose() {
    _routeNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Maps'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.pushNamed(context, "/profile");
            },
          ),
        ],
        backgroundColor: Colors.teal, // Background color of AppBar
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            // Phone Number Field
            TextField(
              decoration: InputDecoration(
                hintText: 'ຫົວໜ້າທີມ leader',
                prefixIcon: Icon(Icons.person_pin_outlined),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            // Phone Number Field
            TextField(
              decoration: InputDecoration(
                hintText: 'Route name',
                prefixIcon: Icon(Icons.route),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
            // Add more input fields if needed
            SizedBox(height: 20),
            DottedBorderBox(), // Custom widget for dotted border box
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: Icon(Icons.camera_alt),
              label: Text('ຖ່າຍຮູບ'), // Replace with the correct text
              onPressed: () {
                // TODO: Implement functionality
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
              child: Text('Start'), // Change Password
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      // Add the bottom navigation bar as in the provided image if necessary
    );
  }

  Widget DottedBorderBox() {
    // TODO: Implement the custom dotted border box
    // You can use a package like 'dotted_border' to create a dotted border widget
    return Container(
      padding: EdgeInsets.all(16),
      child: DashedBorderContainer(
          // Placeholder for actual implementation
          ),
    );
  }
}

// Placeholder widget for DashedBorderContainer
class DashedBorderContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You can use a package like 'dotted_border' for the actual implementation
    return Container(
      alignment: Alignment.center,
      child: Text('Drag & Drop files here or Browse Files'),
    );
  }
}
