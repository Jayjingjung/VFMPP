import 'package:flutter/material.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  final _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00A99C), // Set AppBar color
        title: Text('OTP Verification'),
        centerTitle: true, // Center the title if needed
      ),
      backgroundColor: Color(0xFF00A99C), // Scaffold background color
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 50.0,
              ),
              SizedBox(height: 20),
              Text(
                'VFMPP',
                style: TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 50),
              Text(
                'OTP Code',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '+856 20 98763987', // This should be dynamic based on user's phone number
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Enter the 6-digit OTP code that has been sent from SMS to complete your account registration',
                textAlign: TextAlign.center, // Align text to the center
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: _otpController,
                decoration: InputDecoration(
                  hintText: 'OTP',
                  prefixIcon: Icon(Icons.lock_outline),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                keyboardType: TextInputType.number,
                maxLength: 6, // Typically OTPs are of length 6
              ),
              SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  // TODO: Implement resend OTP logic
                },
                child: Text(
                  'Haven\'t got the confirmation code yet? Resend',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 90),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ).copyWith(
                  minimumSize:
                      MaterialStateProperty.all(Size(double.infinity, 46)),
                ),
                onPressed: () {
                  // TODO: Implement OTP verification logic
                  Navigator.pushNamed(context, "/confirm_password");
                },
                child: Text('ຕໍ່'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
