import 'dart:ui';

import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  final Map<String, dynamic> post;
  final String postId;
  PostView({super.key, required this.post, required this.postId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://w0.peakpx.com/wallpaper/172/772/HD-wallpaper-polina-pretty-girl-model-blonde-beauty-russian.jpg',
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Relative",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "@Relative",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                )
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.hardEdge,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Container(
                          child: Image.network(
                              "https://images.unsplash.com/photo-1566275529824-cca6d008f3da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGhvdG98ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60")),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 80,
                    width: 390,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.thumb_up),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("1"),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.comment),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("5")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
