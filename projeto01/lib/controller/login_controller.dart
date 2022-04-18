import 'package:flutter/widgets.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _login;
  setLogin(String value) => _login = value;

  String? _pass;
  setPass(String value) => _pass = value;

  Future<bool> auth() async {
    inLoader.value = true;
    // ignore: avoid_print
    //print('login: $_login, pass: $_pass');
    await Future.delayed(const Duration(seconds: 2));
    inLoader.value = false;
    return _login == 'admin' && _pass == '123';
  }
}
