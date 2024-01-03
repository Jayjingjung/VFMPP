import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  String? _selectedCity;
  String? _selectedVillage;
  String? _selectedProvince;

  // Example lists for cities, villages, and provinces
  final List<String> _cities = ['City 1', 'City 2', 'City 3'];
  final List<String> _villages = ['Village 1', 'Village 2', 'Village 3'];
  final List<String> _provinces = ['Province 1', 'Province 2', 'Province 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00A99C),
      ),
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
            // VEMPP Text in a Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
            // City Dropdown
            DropdownButtonFormField<String>(
              value: _selectedCity,
              decoration: InputDecoration(
                hintText: 'City',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
              onChanged: (newValue) {
                setState(() {
                  _selectedCity = newValue;
                });
              },
              items: _cities.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            // Province Dropdown
            DropdownButtonFormField<String>(
              value: _selectedProvince,
              decoration: InputDecoration(
                hintText: 'Province',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
              onChanged: (newValue) {
                setState(() {
                  _selectedProvince = newValue;
                });
              },
              items: _provinces.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            // Village Dropdown
            DropdownButtonFormField<String>(
              value: _selectedVillage,
              decoration: InputDecoration(
                hintText: 'Village',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
              onChanged: (newValue) {
                setState(() {
                  _selectedVillage = newValue;
                });
              },
              items: _villages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
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
                Navigator.pushNamed(context, "/password");
              },
              child: Text('ຕໍ່ໄປ'), // 'Continue' in Lao
            ),
          ],
        ),
      ),
    );
  }
}
