import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: child);
  }
}
