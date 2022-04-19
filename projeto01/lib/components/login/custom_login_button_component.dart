import 'package:flutter/material.dart';
import 'package:projeto01/controller/login_controller.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtonComponent({Key? key, required this.loginController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? const CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                loginController.auth().then(
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
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Falha ao realizar login'),
                        duration: Duration(seconds: 5),
                      ));
                    }
                  },
                );
              },
              child: const Text('Login'),
            ),
    );
  }
}
