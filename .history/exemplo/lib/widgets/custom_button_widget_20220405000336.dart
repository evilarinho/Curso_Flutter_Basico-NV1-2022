import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: child);
  }
}
