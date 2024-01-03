import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SpecialPage(),
      // Add routes and other MaterialApp properties as needed.
    );
  }
}

class SpecialPage extends StatelessWidget {
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
        backgroundColor: Colors.teal,
      ),
      body: Scrollbar(
        // Set to true to always show the scrollbar
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'ຊືສັດ:',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 10),
              MarkableButton(
                text: 'ຍັງມີຊີວິດ',
                icon: Icons.pets,
                color: Colors.teal,
              ),
              // ... Repeat MarkableButton for other buttons
              SizedBox(height: 10),
              MarkableButton(
                text: 'ຕາຍເເລ້ວ',
                icon: Icons.sentiment_satisfied_alt_outlined,
                color: Colors.teal,
              ),
              SizedBox(height: 10),
              MarkableButton(
                text: 'ຮອງຮອຍ',
                icon: Icons.sentiment_satisfied_alt_outlined,
                color: Colors.teal,
              ),

              SizedBox(height: 10),
              MarkableButton(
                text: 'ສຽງສັດ',
                icon: Icons.sentiment_satisfied_alt_outlined,
                color: Colors.teal,
              ),
              SizedBox(height: 10),
              MarkableButton(
                text: 'ຂີສັດ',
                icon: Icons.sentiment_satisfied_alt_outlined,
                color: Colors.teal,
              ),
              SizedBox(height: 10),
              MarkableButton(
                text: 'ຮັງ',
                icon: Icons.sentiment_satisfied_alt_outlined,
                color: Colors.teal,
              ),
              SizedBox(height: 10),
              MarkableButton(
                text: 'ຮອຍຂູດຂີດ',
                icon: Icons.sentiment_satisfied_alt_outlined,
                color: Colors.teal,
              ),
              SizedBox(height: 10),
              MarkableButton(
                text: 'ໃຫ້ອາຫານ',
                icon: Icons.sentiment_satisfied_alt_outlined,
                color: Colors.teal,
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
                  minimumSize:
                      MaterialStateProperty.all(Size(double.infinity, 46)),
                ),
                onPressed: () {
                  // TODO: Implement logic to proceed to next page or validate passwords
                  Navigator.pushNamed(context, "/special_detailed");
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

class MarkableButton extends StatefulWidget {
  final String text;
  final IconData icon;
  final Color color;

  const MarkableButton({
    required this.text,
    required this.icon,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  _MarkableButtonState createState() => _MarkableButtonState();
}

class _MarkableButtonState extends State<MarkableButton> {
  bool isMarked = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        setState(() {
          isMarked = !isMarked;
        });
      },
      icon: Icon(
        widget.icon,
        color: isMarked ? Colors.yellow : Colors.white,
      ),
      label: Text(widget.text),
      style: ElevatedButton.styleFrom(
        primary: widget.color,
        padding: EdgeInsets.symmetric(vertical: 25),
        textStyle: TextStyle(fontSize: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        side: BorderSide(color: isMarked ? Colors.green : Colors.transparent),
      ),
    );
  }
}
