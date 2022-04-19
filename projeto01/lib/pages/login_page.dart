// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:projeto01/components/login/custom_login_button_component.dart';
import 'package:projeto01/controller/login_controller.dart';
import 'package:projeto01/widgets/custom_text_field_widget.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  // ignore: prefer_final_fields
  final LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.people, size: MediaQuery.of(context).size.height * 0.2),
            // ignore: duplicate_ignore, duplicate_ignore, duplicate_ignore
            CustomTextFieldWidget(
              label: 'Login',
              onChanged: _controller.setLogin,
            ),
            CustomTextFieldWidget(
              label: 'Senha',
              onChanged: _controller.setPass,
              obscureText: true,
            ),
            SizedBox(height: 15),
            CustomLoginButtonComponent(loginController: _controller),
          ],
        ),
      ),
    );
  }
}
