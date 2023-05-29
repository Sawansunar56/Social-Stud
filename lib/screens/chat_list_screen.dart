import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              ListTile(title: Text("Hellow ")),
            ],
          ))
        ],
      ),
    );
  }
}
