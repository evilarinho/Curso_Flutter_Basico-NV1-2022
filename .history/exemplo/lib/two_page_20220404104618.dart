import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  final String args;
  const TwoPage({Key? key, this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Volatar para a page anterior'),
        ),
      ),
    );
  }
}
