//stl

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //stl
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        appBar: AppBar(
          title: const Text('AppBar'),
        )
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.blue),
        child: Center(
          child: const Text(
            'Olá Mundo!',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        //shape: BoxShape.circle),
      ),
    );
  }
}
