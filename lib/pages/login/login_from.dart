import 'package:flutter/material.dart';
import 'package:learn_flutter_test1/routes.dart';
import 'package:learn_flutter_test1/widgets/input_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _showPassword = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InputField(
          padding: EdgeInsets.symmetric(vertical: 10),
          labelText: '用户名',
          hintText: '请输入用户名',
        ),
        InputField(
          padding: EdgeInsets.symmetric(vertical: 10),
          labelText: '密码',
          hintText: '请输入密码',
          obscureText: !_showPassword,
          suffixIcon: IconButton(
            onPressed: () => setState(() => _showPassword = !_showPassword),
            icon: Icon(_showPassword ? Icons.visibility : Icons.visibility_off),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: () {},
            child: Text('登录', style: TextStyle(color: Colors.white)),
          ),
        ),

        SignUpPrompt(),
      ],
    );  
  }
}

class SignUpPrompt extends StatelessWidget {
  const SignUpPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('还没有账号？'),
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.register);
            },
            child: Text("去注册", style: TextStyle(color: Colors.green)),
          ),
        ],
      ),
    );
  }
}
