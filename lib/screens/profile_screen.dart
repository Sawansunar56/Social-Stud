import 'package:flutter/material.dart';
import 'package:social_media/constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(children: [
              Stack(children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://w0.peakpx.com/wallpaper/172/772/HD-wallpaper-polina-pretty-girl-model-blonde-beauty-russian.jpg'),
                    ),
                  ),
                  child: Text("red"),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0)),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.red),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Follower"),
                              Text("Following"),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "@relative",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                  "My Name is Shashanka Gogoi and I am the best in blender works"),
                              const SizedBox(height: 20),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 3.0,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(120, 45),
                                    backgroundColor: Colors.amber[600],
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Manage",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              Flexible(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0)),
                  child: Container(
                    decoration: BoxDecoration(color: shasBackgroundColor),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0)),
                        child: GridView.count(
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          crossAxisCount: 2,
                          children: [
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                            Container(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg")),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
