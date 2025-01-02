import 'package:flutter/material.dart';
import 'screens/Login/loginpage.dart';

void main() {
  runApp(CeremonyApp());
}

class CeremonyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Set LoginPage as the starting page
    );
  }
}
