import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_media/constants/colors.dart';
import 'package:social_media/utils/post_view.dart';

class HomeDataScreen extends StatelessWidget {
  const HomeDataScreen({super.key});

  Stream<QuerySnapshot> getDataStream() {
    final String userId = FirebaseAuth.instance.currentUser!.uid.toString();
    return FirebaseFirestore.instance.collection('posts').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Explore",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: shasPrimaryColor,
                        child: CircleAvatar(
                          radius: 22,
                          backgroundImage: NetworkImage(
                            'https://w0.peakpx.com/wallpaper/172/772/HD-wallpaper-polina-pretty-girl-model-blonde-beauty-russian.jpg',
                          ),
                        ),
                      ),
                      Text("Name"),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: StreamBuilder(
                stream: getDataStream(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text('Something went wrong'),
                    );
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  final posts = snapshot.data!.docs;

                  return ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      final post = posts[index].data() as Map<String, dynamic>;
                      final postId = posts[index].reference.id;
                      return PostView(
                        post: post,
                        postId: postId,
                      );
                    },
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
