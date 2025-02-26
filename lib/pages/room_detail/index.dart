import 'package:flutter/material.dart';

class RoomDetailPage extends StatelessWidget {
  final String roomId;

  const RoomDetailPage({super.key, required this.roomId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('房间详情页：$roomId')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('返回'),
        ),
      ),
    );
  }
}
