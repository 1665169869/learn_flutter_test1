import 'package:flutter/material.dart';
import 'package:learn_flutter_test1/routes.dart';

class IndexNavigatorItem {
  final IconData icon;
  final String label;
  final Function(BuildContext context)? onTap;

  IndexNavigatorItem({required this.icon, required this.label, this.onTap});
}

List<IndexNavigatorItem> indexNavigatorItemList = [
  IndexNavigatorItem(
    icon: Icons.home_filled,
    label: "整租",
    onTap: (context) => Navigator.pushNamed(context, Routes.login),
  ),
  IndexNavigatorItem(
    icon: Icons.people,
    label: "合租",
    onTap: (context) => Navigator.pushNamed(context, Routes.login),
  ),
  IndexNavigatorItem(
    icon: Icons.map,
    label: "地图找房",
    onTap: (context) => Navigator.pushNamed(context, Routes.login),
  ),
  IndexNavigatorItem(
    icon: Icons.shop,
    label: "去出租",
    onTap: (context) => Navigator.pushNamed(context, Routes.login),
  ),
];
