import 'package:exemplo/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primaryColor: Colors.green,
    );
    return MaterialApp(
      theme: themeData,
      home: const HomePage(),
    );
  }
}
