import 'package:flutter/material.dart';
import 'package:learn_flutter_test1/pages/home/tab_index/index.dart';
import 'package:learn_flutter_test1/widgets/page_content.dart';

List<Widget> tabviewList = [
  TabIndex(),
  PageContent(name: "搜索"),
  PageContent(name: "咨询"),
  PageContent(name: "我的"),
];

List<BottomNavigationBarItem> navBarItemList = [
  BottomNavigationBarItem(label: "首页", icon: Icon(Icons.home)),
  BottomNavigationBarItem(label: "搜索", icon: Icon(Icons.search)),
  BottomNavigationBarItem(label: "咨询", icon: Icon(Icons.info)),
  BottomNavigationBarItem(label: "我的", icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int newVal) {
    setState(() {
      _selectedIndex = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabviewList[_selectedIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(
          // 取消水波纹效果
          splashColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          items: navBarItemList,
          selectedItemColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
