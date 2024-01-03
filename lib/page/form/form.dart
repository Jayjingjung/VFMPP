import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Form'),
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
        padding: EdgeInsets.all(26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // TODO: Implement action for button
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, // Background color
                padding: EdgeInsets.symmetric(vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text('ສ້າງໃໝ່'), // Create New
            ),
            SizedBox(height: 20),
            ButtonWithIcon(
              text: 'ສັດປ່າຫາຍາກ animals ', // All Items
              icon: Icons.pets, // Changed to pets icon for animals
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(15),
              onPressed: () {
                Navigator.pushNamed(context, "/special");

                // TODO: Implement action
              },
            ),
            SizedBox(height: 16),
            ButtonWithIcon(
              text: 'ການລ່າສັດ hunting', // Inspect
              icon: Icons
                  .nature_people, // Changed to nature_people icon for hunting
              color: Colors.amber,
              borderRadius: BorderRadius.circular(15),
              onPressed: () {
                // TODO: Implement action
              },
            ),
            SizedBox(height: 16),
            ButtonWithIcon(
              text: 'ການລັກລອບ break the law', // Break the Law
              icon:
                  Icons.gavel, // Changed to gavel icon for law-related actions
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(15),
              onPressed: () {
                // TODO: Implement action
              },
            ),
          ],
        ),
      ),
      // You can add the bottom navigation bar as in the provided image if necessary
    );
  }
}

class ButtonWithIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final BorderRadius borderRadius;
  final VoidCallback onPressed;

  const ButtonWithIcon({
    required this.text,
    required this.icon,
    required this.color,
    required this.borderRadius,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.white),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.symmetric(vertical: 25),
        textStyle: TextStyle(fontSize: 16),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
