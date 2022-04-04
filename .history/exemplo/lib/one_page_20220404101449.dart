import 'package:exemplo/two_page.dart';
import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const TwoPage()),
            );
          },
          child: const Text('Ir para Segunda Page'),
        ),
      ),
    );
  }
}