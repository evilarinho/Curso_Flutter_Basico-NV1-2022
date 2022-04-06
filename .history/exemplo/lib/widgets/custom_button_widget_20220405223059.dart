import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final bool disable;
  const CustomButtonWidget({
    Key? key,
    required this.onPressed,
    required this.title,
    this.disable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disable ? null : onPressed,
      child: Text(title),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) return Colors.red;
          if (states.contains(MaterialState.pressed)) return Colors.blue;
          return Colors.green;
        }),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        textStyle: MaterialStateProperty.all(TextStyle()),
      ),
    );
  }
}
