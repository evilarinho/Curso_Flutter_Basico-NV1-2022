// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:projeto01/controller/login_controller.dart';

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
            TextField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                label: Text('Login'),
              ),
              onChanged: _controller.setLogin,
            ),
            TextField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                label: Text('Senha'),
              ),
              obscureText: true,
              onChanged: _controller.setPass,
            ),
            SizedBox(height: 15),
            ValueListenableBuilder<bool>(
              valueListenable: _controller.inLoader,
              builder: (_, inLoader, __) => inLoader
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        _controller.auth().then(
                          (result) {
                            if (result) {
                              // ignore: avoid_print
                              //print('sucess');
                              Navigator.of(context)
                                  .restorablePushReplacementNamed('/home');
                            } else {
                              // ignore: avoid_print
                              //print('failed');
                              // ignore: deprecated_member_use
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: const Text('Falha ao realizar login'),
                                duration: const Duration(seconds: 5),
                              ));
                            }
                          },
                        );
                      },
                      child: const Text('Login'),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
