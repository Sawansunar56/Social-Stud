import 'dart:ui';

import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
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
          Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Container(
                        child: Image.network(
                            'https://w0.peakpx.com/wallpaper/172/772/HD-wallpaper-polina-pretty-girl-model-blonde-beauty-russian.jpg')),
                  ),
                ],
              ),
              Positioned.fill(
                left: 0,
                right: 0,
                top: 230,
                bottom: 0,
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.message),
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
                              Icon(Icons.broken_image),
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
          )
        ],
      ),
    );
  }
}
