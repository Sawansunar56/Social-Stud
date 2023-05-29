import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:social_media/constants/colors.dart';
import 'package:social_media/utils/post_view.dart';

class HomeDataScreen extends StatelessWidget {
  const HomeDataScreen({super.key});

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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
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
              child: ListView(
                children: [
                  PostView(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
