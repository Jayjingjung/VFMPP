import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to previous screen
          },
        ),
        title: Text('ການຕັ້ງຄ່າ'), // Settings title
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Handle menu button press
            },
          ),
        ],
        backgroundColor: Colors.teal, // Adjust the color to match the UI
      ),
      body: ListView(
        children: [
          ListTile(
            leading:
                Icon(Icons.admin_panel_settings_rounded), // Corrected this line
            title: Text('ປ່ຽນລະຫັດຜ່ານ'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, "/changepassword");
            },
          ),
          SwitchListTile(
            secondary: Icon(Icons.lock_outline), // Corrected this line
            title: Text('ເຂົ້າສູ່ລະບົບດ້ວຍ PIN'),
            value: false, // The current value of the switch
            onChanged: (bool value) {
              // Update the state of the switch
            },
          ),
          SwitchListTile(
            secondary: Icon(Icons
                .fingerprint), // Corrected this line, replaced with a fingerprint icon
            title: Text('ເຂົ້າສູ່ລະບົບດ້ວຍ ລາຍນິ້ວມື & ໃບໜ້າ'),
            value: true, // The current value of the switch
            onChanged: (bool value) {
              // Update the state of the switch
            },
          ),
          // Add more settings options here
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
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
        ],
        selectedItemColor: Colors.amber[800], // Highlight the selected item
        // Add onTap callback here if necessary
      ),
    );
  }
}
