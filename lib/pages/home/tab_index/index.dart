import 'package:flutter/material.dart';
import 'package:learn_flutter_test1/pages/home/tab_index/index_navigator.dart';
import 'package:learn_flutter_test1/widgets/common_swiper.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({super.key});

  static const List<String> _images = [
    "https://i0.hdslb.com/bfs/banner/6b57c3171ee8d05b53fa5228a3560b40082395be.jpg",
    "https://i0.hdslb.com/bfs/banner/425a3dd3164c1fb3129578c2527fa0abec666662.png",
    "https://i0.hdslb.com/bfs/banner/59aac4b8d964f2d37c386673aecc339b57462c02.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('tabindex')),
      body: ListView(
        children: [
          CommonSwiper(images: _images, height: 212, autoplay: true),
          IndexNavigator(),
          Text("内容区域"),
        ],
      ),
    );
  }
}
