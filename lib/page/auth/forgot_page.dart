import 'package:flutter/material.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  final _phoneNumberController =
      TextEditingController(); // Corrected variable name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00A99C), // Set AppBar color
      ),
      backgroundColor: Color(0xFF00A99C), // Scaffold background color
      body: SingleChildScrollView(
        // Wrap the content in a SingleChildScrollView
        child: Padding(
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
              // VEMPP Title Text
              Text(
                'VEMPP',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 60),
              // Reset Password Title Text
              Text(
                'ກູ້ຄືນລະຫັດຜ່ານ',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              // Description Text
              Text(
                'ປ້ອນເບີໂທລະສັບຂອງທ່ານ ເພື່ອຮັບລະຫັດໂອທີພີ ແລະ ປ່ຽນລະຫັດຜ່ານໃໝ່',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              // Phone Number Field
              TextField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  hintText: '20',
                  prefixIcon: Icon(Icons.call),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                keyboardType: TextInputType.phone,
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
                  // TODO: Implement logic for password reset
                  Navigator.pushNamed(context, "/otp");
                },
                child: Text('ຕໍ່ໄປ'), // 'Continue' in Lao
              ),
            ],
          ),
        ),
      ),
    );
  }
}
