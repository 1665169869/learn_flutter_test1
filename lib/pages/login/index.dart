import 'package:flutter/material.dart';
import 'package:learn_flutter_test1/pages/login/login_from.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
        backgroundColor: const Color.fromARGB(255, 57, 155, 53),
      ),
      body: SafeArea(minimum: EdgeInsets.all(30), child: LoginForm()),
    );
  }
}
