import 'package:flutter/material.dart';
import 'package:social_media/screens/chat_screen.dart';

class ChatListScreen extends StatelessWidget {
  ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              "Chat List",
              style: TextStyle(
                fontSize: 21,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SingleChatScreen()));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://media.istockphoto.com/id/1140371751/photo/domestic-cat-sitting-in-grass-phoot-with-blur-background.jpg?s=612x612&w=0&k=20&c=U8PY7ArXns1DF8HL4IKz-E5jchkTxZ9svESenQxJXVY="),
                          child: Text(""),
                        ),
                        title: Text("Hellow "),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
