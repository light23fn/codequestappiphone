import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(CodeLingoApp());
}

class CodeLingoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
