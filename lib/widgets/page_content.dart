import 'package:flutter/material.dart';
import 'package:learn_flutter_test1/routes.dart';

class PageContent extends StatelessWidget {
  final String name;
  const PageContent({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          '当前页面：$name',
          style: Theme.of(context).primaryTextTheme.titleLarge,
        ),
      ),
      body: ListView(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.login);
            },
            child: Text(Routes.login),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.home);
            },
            child: Text(Routes.home),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/aaaa");
            },
            child: Text("不存在的页面"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/room/222');
            },
            child: Text("房屋详情页ID: 222"),
          ),
        ],
      ),
    );
  }
}
