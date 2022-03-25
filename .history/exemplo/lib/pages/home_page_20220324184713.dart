//stl

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //stl
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.blue),
        child: const Text(
          'Olá Mundo!',
          style: TextStyle(color: Colors.white),
        ),
        //shape: BoxShape.circle),
      ),
    );
  }
}
