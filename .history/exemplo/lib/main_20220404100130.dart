import 'package:flutter/material.dart';
import 'one_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //theme: ThemeData(
      //  primaryColor: Colors.red,
      //),
      home: const OnePage(),
    );
  }
}
