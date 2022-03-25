import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: 200,
          width: 200,
          decoration:
              const BoxDecoration(color: Colors.blue, 
              //shape: BoxShape.circle),
        ),
      ),
    ),
  );
}
