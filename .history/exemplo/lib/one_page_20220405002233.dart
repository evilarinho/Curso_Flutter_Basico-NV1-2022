import 'package:exemplo/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButtonWidget(
          onPressed: () {
            Title(color: color, child: child)
                  // ignore: avoid_print
                  (value) => print(value),
                );
          },
          child: const Text('Ir para Segunda Page'),
        ),
      ),
    );
  }
}
