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
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1566275529824-cca6d008f3da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGhvdG98ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60'),
                    ),
                  ),
                  child: Text(""),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0)),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text("123"),
                                    Text("Follower"),
                                  ],
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Column(
                                  children: [
                                    Text("123"),
                                    Text("Following"),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 20),
                                Text(
                                  "@relative",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                    textAlign: TextAlign.center,
                                    "My Name is Shashanka Gogoi and I am the best in blender works"),
                                const SizedBox(height: 20),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
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
                                              BorderRadius.circular(30.0)),
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
                ),
                Positioned.fill(
                  top: 110,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: shasBackgroundColor,
                      child: CircleAvatar(
                        radius: 35,
                        child: Text(""),
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1566275529824-cca6d008f3da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGhvdG98ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60"),
                      ),
                    ),
                  ),
                ),
              ]),
              Expanded(
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
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1566275529824-cca6d008f3da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGhvdG98ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60'),
                                ),
                              ),
                              child: Text(""),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1566275529824-cca6d008f3da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGhvdG98ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60'),
                                ),
                              ),
                              child: Text(""),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1566275529824-cca6d008f3da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGhvdG98ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60'),
                                ),
                              ),
                              child: Text(""),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1566275529824-cca6d008f3da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGhvdG98ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60'),
                                ),
                              ),
                              child: Text(""),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1566275529824-cca6d008f3da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGhvdG98ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60'),
                                ),
                              ),
                              child: Text(""),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1566275529824-cca6d008f3da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGhvdG98ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60'),
                                ),
                              ),
                              child: Text(""),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1566275529824-cca6d008f3da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGhvdG98ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60'),
                                ),
                              ),
                              child: Text(""),
                            ),
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
