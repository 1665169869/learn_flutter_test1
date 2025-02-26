import 'package:flutter/material.dart';
import 'package:learn_flutter_test1/routes.dart';
import 'package:learn_flutter_test1/widgets/input_field.dart';

class RegisterFrom extends StatefulWidget {
  const RegisterFrom({super.key});

  @override
  State<RegisterFrom> createState() => _LoginFormState();
}

class _LoginFormState extends State<RegisterFrom> {
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
          obscureText: true,
        ),
        InputField(
          padding: EdgeInsets.symmetric(vertical: 10),
          labelText: '确认密码',
          hintText: '请再确认密码',
          obscureText: true,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: () {},
            child: Text('注册', style: TextStyle(color: Colors.white)),
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
          Text('已经有账号？'),
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.login);
            },
            child: Text("去登录", style: TextStyle(color: Colors.green)),
          ),
        ],
      ),
    );
  }
}
