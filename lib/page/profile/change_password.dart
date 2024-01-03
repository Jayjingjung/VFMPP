import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final TextEditingController _currentPasswordController =
      TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmNewPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmNewPasswordController.dispose();
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
        title: Text('ປ່ຽນລະຫັດຜ່ານ'), // Change Password
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Handle menu button press
            },
          ),
        ],
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          // Changed to ListView for scrollable content
          children: [
            SizedBox(height: 10.0),
            Center(
              child: Text(
                'ປ້ອນລະຫັດຜ່ານໃໝ່', // Enter New Password
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            SizedBox(height: 16),
            _buildPasswordInputField(
              controller: _currentPasswordController,
              hintText: 'ລະຫັດຜ່ານປັດຈຸບັນ', // Current Password
              icon: Icons.lock_outline,
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                'ປ້ອນລະຫັດຜ່ານໃໝ່ ເພື່ອໃຊ້ໃນການເຂົ້າສູ່ລະບົບ', // Enter New Password
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ),
            SizedBox(height: 16),
            _buildPasswordInputField(
              controller: _newPasswordController,
              hintText: 'ລະຫັດຜ່ານໃໝ່', // New Password
              icon: Icons.lock,
            ),
            SizedBox(height: 16),
            _buildPasswordInputField(
              controller: _confirmNewPasswordController,
              hintText: 'ຢືນຢັນລະຫັດຜ່ານໃໝ່', // Confirm New Password
              icon: Icons.lock_outline,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement change password logic
              },
              child: Text('ປ່ຽນລະຫັດ'), // Change Password
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordInputField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
  }) {
    return TextField(
      controller: controller,
      obscureText: true, // Use true to hide password
      decoration: InputDecoration(
        labelText: hintText,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(10), // Apply the borderRadius here
        ),
      ),
    );
  }
}
