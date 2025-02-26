import 'package:flutter/material.dart';
import 'package:learn_flutter_test1/pages/register/register_from.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册'),
        backgroundColor: const Color.fromARGB(255, 57, 155, 53),
      ),
      body: SafeArea(minimum: EdgeInsets.all(30), child: RegisterFrom()),
    );
  }
}
