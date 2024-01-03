import 'package:flutter/material.dart';
import 'package:vmfpp001/page/auth/login_page.dart';
import 'package:vmfpp001/page/home/menu_page.dart';

import 'package:vmfpp001/router/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Removed the const from MaterialApp and menuPage
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      onGenerateRoute: RouterAPI.generateRoutes,
      // menuPage cannot be const
    );
  }
}
