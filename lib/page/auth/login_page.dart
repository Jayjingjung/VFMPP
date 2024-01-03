import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00A99C),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo Placeholder
            CircleAvatar(
              backgroundColor: Colors.orange,
              radius: 50.0,
            ),
            SizedBox(height: 20),
            // Welcome Text and VEMPP Text in a Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome to ',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'VEMPP',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Phone Number Field
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                hintText: 'Enter your phone number',
                prefixIcon: Icon(Icons.phone_android),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            // Password Field
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _rememberMe,
                  onChanged: (bool? value) {
                    if (value != null) {
                      setState(() {
                        _rememberMe = value;
                      });
                    }
                  },
                  checkColor: Colors.white,
                  activeColor: Colors.orange,
                ),
                Text(
                  'Remember me',
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/forgot");
                  },
                  child: Text('Forgot password?'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ).copyWith(
                minimumSize: MaterialStateProperty.all(Size(
                    double.infinity, 46)), // Sets minimum size for the button
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/menuPage");
              },
              child: Text('Login'),
            ),

            TextButton(
              onPressed: () {},
              child: Text(
                'New Member',
                style: TextStyle(color: Colors.white),
              ),
            ),

            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF00A99C), // Button fill color
                onPrimary: Colors.orange, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                      color: Colors.orange, width: 2), // Orange border
                ),
              ).copyWith(
                minimumSize: MaterialStateProperty.all(Size(
                    double.infinity, 46)), // Sets minimum size for the button
              ),
              onPressed: () async {
                Navigator.pushNamed(context, "/register");
              },
              child: Text('register'),
            ),
          ],
        ),
      ),
    );
  }
}
