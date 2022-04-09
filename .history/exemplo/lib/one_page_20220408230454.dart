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
    for (int i = 0; i < 10; i++) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButtonWidget(
          disable: false,
          onPressed: () {},
          title: 'Custom BTN',
          titleSize: 18,
        ),
      ),
    );
  }
}
