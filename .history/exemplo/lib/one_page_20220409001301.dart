import 'dart:math';

import 'package:exemplo/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  int valorAleatorio = 0;

  randon() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        valorAleatorio = Random().nextInt(1000);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('build');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Valor é: $valorAleatorio',
                style: const TextStyle(fontSize: 20)),
            const SizedBox(
              height: 10,
            ),
            CustomButtonWidget(
              disable: false,
              onPressed: () => randon(),
              title: 'Custom BTN',
              titleSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
