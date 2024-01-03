import 'package:flutter/material.dart';

class DetailedProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('ລາຍລະອຽດ'), // Replace with your actual title
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
          ),
        ],
        backgroundColor: Colors.teal, // Adjust the color to match the UI
      ),
      body: SingleChildScrollView(
        // Allows the column to be scrollable
        child: Column(
          children: [
            SizedBox(height: 20.0),
            _buildProfileImage(context),
            SizedBox(height: 24.0),
            _buildUserInfo('ຊື່', 'ນາງ ສີລະວັນ', Icons.person_outline, context),
            _buildUserInfo('ເບີໂທ', '987654321', Icons.call, context),
            _buildUserInfo(
                'ອີເມວ', 'email@example.com', Icons.email_outlined, context),
            // ... add more user info fields if necessary
          ],
        ),
      ),
      // ... you can add the bottom navigation bar as in the provided image if necessary
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 60.0,
            backgroundImage: NetworkImage(
                'https://via.placeholder.com/150'), // Replace with actual image URL
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 201, 201, 201),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.camera_alt, color: Color.fromARGB(255, 8, 8, 8)),
              onPressed: () {
                // Handle profile edit button press
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfo(
      String label, String value, IconData icon, BuildContext context) {
    return Card(
      color: Colors.teal,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          value,
          style: TextStyle(color: Colors.white70),
        ),
        trailing: Icon(Icons.edit, color: Colors.white),
        onTap: () {
          // Handle individual field edit button press
        },
      ),
    );
  }
}
