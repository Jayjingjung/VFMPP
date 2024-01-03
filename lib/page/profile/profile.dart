import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context)
                .pop(); // This will go back to the previous screen
          },
        ),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal,
      body: ListView(
        children: [
          SizedBox(height: 20.0),
          CircleAvatar(
            radius: 60.0,
            backgroundImage: NetworkImage(
                'https://via.placeholder.com/150'), // Replace with actual image URL
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              'User Name', // Replace with actual user name
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          _buildMenuItem(Icons.person, 'ຂໍ້ມູນສ່ວນຕົວ', context, () {
            Navigator.pushNamed(context,
                "/detailedProfilePage"); // Ensure the route is defined in your app
          }),
          SizedBox(height: 20.0),
          _buildMenuItem(Icons.lock_outline, 'ຕັ້ງຄ່າຄວາມປອດໄພ', context, () {
            Navigator.pushNamed(context, "/seting");
          }),
          SizedBox(height: 20.0),
          _buildMenuItem(
              Icons.burst_mode_rounded, 'ຄູ່ມືການນໍາໃຊ້ເເອັບພິເຄຂັ້ນ', context,
              () {
            Navigator.pushNamed(context, "/");
          }),
          SizedBox(height: 20.0),
          _buildMenuItem(Icons.logout, 'ອອກລະບົບ', context, () {
            Navigator.pushNamed(context, "/login");
          }),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
      IconData icon, String title, BuildContext context, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: TextStyle(color: Colors.white)),
      trailing: Icon(Icons.chevron_right, color: Colors.white),
      onTap: onTap,
    );
  }
}
